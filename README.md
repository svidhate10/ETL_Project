# ETL_Project
ETL Project Description:
The U.S. has almost 500 students for every guidance counselor. Underserved youth lack the network to find their career role models, making CareerVillage.org the only option for millions of young people in America and around the globe with nowhere else to turn. To date, 25,000 volunteers have created profiles and opted in to receive emails when a career question is a good fit for them. To help students get the advice they need, the team at CareerVillage.org needs to be able to send the right questions to the right volunteers. CareerVillage.org has provided several years of anonymized data and each file comes from a table in their database. Currently data is being saved in several different CSV files so using files from various locations we cannot answer complex business questions that can be answered by ETL.

Goal of the project is to define ETL process to provide clean data for analyze questions like How well does the solution match professionals to the questions they would be motivated to answer? Final dataset will help us to develop a method to recommend relevant questions to the professionals who are most likely to answer them.

Data source Link:
Source API: kaggle competitions download -c data-science-for-good-careervillage

CareerVillage.org has provided several years of anonymized data and each file comes from a table in their database.

answer_scores.csv answers.csv comments.csv emails.csv group_memberships.csv groups.csv matches.csv professionals.csv question_scores.csv questions.csv school_memberships.csv students.csv tag_questions.csv tag_users.csv tags.csv

ETL Process step by step process:


Extract:

1.Read CSV file from the source link

2.Created notebook code to read CSV file


Transform:

1.Create ERD diagram to build primary key and foreign key relationship.

2.Create script to build postgres database.
3.Write python code to read csv from local folder and add index and change date format and save file to postgres table. Load:

4.Import CSV files into postgres database tables.

5.Write queries to perform analysis and aggregate data
