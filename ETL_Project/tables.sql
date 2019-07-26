Table answers{
  answers_id varchar [primary key]
  answers_author_id varchar[ref:>professional.professionals_id]
  answers_question_id varchar[ref:>questions.questions_id]
  answers_date_added date
  answers_body varchar
}

Table answer_scores{
  id varchar[ref:>answers.answers_id]
  score int
}

Table comments{
  comments_id varchar [primary key]
  comments_author_id varchar[ref:>professional.professional_id]
  comments_parent_content_id varchar
  comments_date_added date
  comments_body varchar
}

Table emails{
  emails_id int [primary key]
  emails_recipient_id varchar[ref:>professionals.prfessionals_id]
  emails_date_sent date
  emails_frequency_level varchar
}
  
Table group_memberships{
  group_membership_group_id varchar
  group_membership_user_id varchar

}

Table groups{
  groups_id varchar [primary key]
  groups_group_type varchar
}

Table matches{
  matches_email_id int[ref:>emails.emails_id]
  matches_question_id varchar[ref:>questions.questions_id]

}

Table professionals{
  professionals_id varchar [primary key]
  professionals_location varchar
  professionals_industry varchar
  professionals_headline varchar
  professional_date_joined date
}

Table question_scores{
  id varchar[ref:>questions.questions_id]
  score int
}

Table questions{
  questions_id varchar [primary key]
  questions_author_id varchar[ref:>students.student_id]
  questions_date_added date
  questions_title varchar
  questions_body varchar
}

Table school_memberships{
  school_memberships_school_id int [primary key]
  school_memberships_user_id varchar
}

Table students{
  students_id varchar [primary key]
  students_location varchar
  students_date_joined date
}

Table tag_questions{
  tag_questions_tag_id int[ref:>tags.tags_tag_id]
  tag_questions_question_id varchar[ref:>questions.questions_id]
}

Table tag_users{
  tag_users_tag_id int[ref:>tags.tags_tag_id]
  tags_users_user_id varchar
}

Table tags{
  tags_tag_id int [primary key]
  tags_tag_name varchar
}