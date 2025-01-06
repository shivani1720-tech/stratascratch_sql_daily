--Calculate Average Score
--Calculate the average score for each project, but only include projects where more than one team member has provided a score.
--Your output should include the project ID and the calculated average score for each qualifying project.

--Table: project_data
  date: date
  project_id: bigint
  score: bigint
  team_member_id: bigint

--Solution
select project_id, AVG(score) from project_data 
group by project_id
having count(team_member_id) > 1;
