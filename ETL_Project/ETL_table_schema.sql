Create Table school_memberships(
  school_memberships_school_id int primary key,
  school_memberships_user_id varchar
);

Create Table students(
  students_id varchar(40) primary key,
  students_location varchar,
  students_date_joined date
);

Create Table groups(
  groups_id varchar(40) primary key,
  groups_group_type varchar
);

create Table answers(
  answers_id varchar(40) primary key,
  answers_author_id varchar(40) References professionals(professionals_id),
  answers_question_id varchar(40) References questions(questions_id),
  answers_date_added date,
  answers_body varchar
);

Create Table matches(
  matches_email_id int References emails(emails_id),
  matches_question_id varchar References questions(questions_id)
);

Create Table emails(
  emails_id int primary key,
  emails_recipient_id varchar References professionals(professionals_id),
  emails_date_sent date,
  emails_frequency_level varchar
);

Create Table answer_scores(
  id varchar(40) References answers(answers_id),
  score int
);


create Table comments(
  comments_id varchar(40) primary key,
  comments_author_id varchar References students(students_id),
  comments_parent_content_id varchar(40),
  comments_date_added date,
  comments_body varchar
);

drop table group_memberships;
Create Table group_memberships(
  group_memberships_group_id varchar(40),
  group_memberships_user_id varchar(40)
);


Create Table question_scores(
  id varchar References questions(questions_id),
  score int
);

Create Table questions(
  questions_id varchar(40) primary key,
  questions_author_id varchar(40) References students(students_id),
  questions_date_added date,
  questions_title varchar,
  questions_body varchar
);

Create Table tag_questions(
  tag_questions_tag_id int References tags(tags_tag_id),
  tag_questions_question_id varchar(40) References questions(questions_id)
);
drop table tag_users;
create Table tag_users(
  tag_users_tag_id int References tags(tags_tag_id),
  tag_users_user_id varchar
);

Create Table tags(
  tags_tag_id int primary key,
  tags_tag_name varchar
);


Create Table professionals(
  professionals_id varchar primary key,
  professionals_location varchar,
  professionals_industry varchar,
  professionals_headline varchar,
  professionals_date_joined date
);

select * from students;
select * from tags;
select * from groups;
select * from professionals;
select * from comments;
select * from questions;
select * from answers;
select * from answer_scores;
select * from tag_users;