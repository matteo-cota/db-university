1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date),
COUNT(*) FROM `students` 
GROUP BY YEAR(enrolment_date);


2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address, COUNT(*) FROM `teachers` 
GROUP BY office_address;


3. Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id, AVG(vote) FROM `exam_student` 
GROUP BY exam_id;


4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT departments.name, COUNT(*) FROM `degrees` 
INNER JOIN `departments` 
ON degrees.department_id = departments.id 
GROUP BY department_id;
