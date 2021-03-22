# Pewlett-Hackard-Analysis


## Overview
The purpose of this analysis is to determine the numnber of retiring employees per there title and to identify employeees who are eligible to perticipate in a mentoship program. Specifically the retirement employess are those who who were born between 1952 and 1955. The employees who qualify to be mentors for new onboarding hires were selected by birth dates between January 1, 1965 and December 31, 1965.

## Results
- In the table 'Ret_emp_titles' [retirement_titles](https://github.com/josafathpelayo/Pewlett-Hackard-Analysis/blob/main/New%20folder/retirement_titles.png   ) 
- Each employee born between 1952 and 1955 was taken in count for from the Employees table and joined with the Titles table.
- Table shows each employee, but has duplicates names in the table as some employees got promoted and has more than one title as the progressed through the ranks of Pewlett-Hackard.
- Table was saved as retirement_titles.csv in the data folder.

- In the table 'new_ret_titles'[Unique_titles](https://github.com/josafathpelayo/Pewlett-Hackard-Analysis/blob/main/New%20folder/Unique_titles.png )
- Duplicate names from the 'Ret_emp_titles' were taken out by using the distinct on function as seen in 'new_ret_titles'.
- Table was saved as unique_titles.csv in the data folder.

- In the table 'ret_titles_count' [retiring_titles](https://github.com/josafathpelayo/Pewlett-Hackard-Analysis/blob/main/New%20folder/retiring_titles.png)
- The count of exactly each employee title was gathered and placed into a table.
- Table was saved as retiring_titles.csv in the data folder.

- In table 'mentor' [mentorship_eligibility] (https://github.com/josafathpelayo/Pewlett-Hackard-Analysis/blob/main/New%20folder/Mentor.png)
- Three tables were joined together (Employees, Department Employee, & Titles) to get the employees who can potentially be mentors for new employees
- Code for the table[mentor_query](  )


## Summary

As we use the retiring_titles table to see how many employees are about to retire, we can see specifcally the count per title that needs to be filled. What we didn't take into cosideration is  the "to_date" column which shows when people have left the company and in "new_ret_titles' table, we can see that some employees have already left and is grouped with the whole silver tsunami. In other words, the silver tsunami shown in 'ret_titles_count' has every single person who has retired, left the company and is about to retire based soley on there birth date range we specified. The total count of current employees who's about to retire can be actually less so we need to take into considation those who already left the company to get a better number of what the comapny needs  can expect to hire.

Although this is a considaration we can apply to get a more percise count, our analysis concludes that 1,550 retirement-ready employees can be kept as part time employees to mentor new hires. This is not enough based on the 'ret_titles_count' as there's 29,414 senior engineers and 28,254  senior staff, 14,222 engineers, 12,243 staff employees who's about to retire. This isn't including the tech leaders, assistant egineers and the 2 managers on the table. There is going to be a lot of promotions going within the company to cover the retirees, but the amount of new hires needed per mentor is going to exceed what the company can provide. A possoble solution for this can be having the mentors to have more than one new hire to mentor, but yet again, this is a part time role so more than one employee to mentor can become a full time job.In conclusion, the silver tsunami is unavoidable, and it's best to start hiring people with some expeirence and leave a reasonable amount of new hires with little experience for the mentorship program the comapnay can provide.



