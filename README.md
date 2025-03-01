# Automated Web Data Scrapper

## INSTRUCTIONS ON HOW TO RUN THE REPOSITORY

1. Clone the repo using
```bash
git clone https://github.com/DA5402-MLOps-JanMay2025/assignment-02-retro-31.git
```
2. Run the following commands on the working directory
```bash
docker compose build
docker compose up
```
3. Save the following connection settings in apache airflow
![image](https://github.com/user-attachments/assets/93034b72-8411-438f-81be-982bda931845)
![image](https://github.com/user-attachments/assets/c383d40f-7351-44e6-be06-186ec1b0eb26)

4. Replace the email credentials on send_mail.py (it has been tested only for gmails)
5. Be sure to use App password in place of password for mailing.(https://support.google.com/accounts/answer/185833?hl=en)
6. Do not change the version of apache-airflow installation as 2.10.5 has an issue with sql operators, therefore the version has been downgraded.
7. Do not alter the Dockerfile or docker-compose.yaml as they've been configured prior to work with various other package installations.
8. Thank you

