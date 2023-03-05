use iaao_surveys
go

CREATE TABLE responses_detail
    ([questionnaire_id] int, [jurisdiction_id] int, [year] int, [question_id] int, [sub_question_id] varchar(5), [response] varchar(62))
;
    
CREATE TABLE questionnaire
    ([questionnaire_id] int, [questionnaire_name] varchar(11))
GO
    
CREATE TABLE questions
    ([questionnaire_id] int, [year] int, [question_id] int, [question_num] int, [question_desc] varchar(129))
GO
    
CREATE TABLE responses
    ([questionnaire_id] int, [jurisdiction_id] int, [year] int, [question_id] int, [responded_to] int)
GO

CREATE TABLE sub_questions
    ([questionnaire_id] int, [year] int, [question_id] int, [sub_question_id] int, [sub_question] varchar(64))
GO
    
CREATE TABLE jurisdictions
    ([jurisdiction_id] int, [jurisdiction_name] varchar(11), [jurisdiction_description] varchar(49), [jurisdiction_country] varchar(3), [jurisdiction_type] varchar(6))
GO
   
