SELECT DISTINCT qs.questionnaire_name, j.jurisdiction_name, j.jurisdiction_description, j.jurisdiction_country, j.jurisdiction_type,
q.year, q.question_num, q.question_desc, r.responded_to, sq.sub_question_id, sq.sub_question, rd.response 
FROM questionnaire qs
JOIN questions q ON qs.questionnaire_id = q.questionnaire_id
JOIN responses r ON q.questionnaire_id = r.questionnaire_id and q.year = r.year and q.question_id = r.question_id
JOIN jurisdictions j ON r.jurisdiction_id = j.jurisdiction_id
--LEFT JOIN sub_questions sq ON q.questionnaire_id = sq.questionnaire_id and q.year = sq.year and r.question_id = sq.question_id
JOIN responses_detail rd ON q.questionnaire_id = rd.questionnaire_id and r.jurisdiction_id = rd.jurisdiction_id and
r.year = rd.year and r.question_id = rd.question_id 
LEFT JOIN sub_questions sq ON q.questionnaire_id = sq.questionnaire_id and q.year = sq.year and r.question_id = sq.question_id and  rd.sub_question_id = sq.sub_question_id
ORDER BY qs.questionnaire_name, q.question_num, sq.sub_question, j.jurisdiction_name
GO