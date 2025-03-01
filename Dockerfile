# Use the official Airflow image as the base
FROM apache/airflow:2.7.3

# Step 2: Install Python package
RUN pip install playwright beautifulsoup4 apache-airflow-providers-postgres

RUN playwright install

# Switch to root to install system packages
USER root

# Install system dependencies required for Playwright browsers
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libnss3 \
    libnspr4 \
    libdbus-1-3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxcb1 \
    libxkbcommon0 \
    libx11-6 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libpango-1.0-0 \
    libcairo2 \
    libasound2 \
    libatspi2.0-0 && \
    rm -rf /var/lib/apt/lists/*

USER airflow

RUN airflow db upgrade && \
    airflow connections add postgres_default \
        --conn-type postgres \
        --conn-host postgres \
        --conn-schema airflow \
        --conn-login airflow \
        --conn-password airflow \
        --conn-port 5432