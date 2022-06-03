# hcde-410-final
The final project for Nathan Ford's partaking in the University of Washington class Human Centered Design Engineering 410 - The Human Data Interaction (HCDE 410).

The project focuses on answering the question: Funding which level of education (pre-primary, primary, secondary, or tertiary) has the highest correlation to a country's educational success as measured by the PISA in the most recent year data is available? What are potential causes of this relationship if it is causal?

The project draws primarily from the webpages on "Our World in Data" that discuss global education in relation to PISA scores. 
https://ourworldindata.org/quality-of-education#teacher-quality
https://ourworldindata.org/financing-education#the-big-picture

The data I am using resides in several datasets that preside on the same "Our World in Data" webpage. The Our World in Data webpage is accessible at this link (https://ourworldindata.org/financing-education). The main dataset is part of a research paper written by the World Bank with a public disclosure status. The citation and licensing is viewable at the first link.

To answer the question above, my methodology will be simple as the point of the analysis is not to draw conclusions but rather point me to what policies might have the largest impact on student success. To begin, I will join datasets from Our World in Data that contain information on a country's PISA score. To test whether a given field is correlated with student success, I will run linear models with each level of education funding being checked against PISA scores.

Analyzing the correlation between a country's PISA score and money spent per education level and creating a visual to show this value is an appropriate method because no conclusions are drawn. Rather, fields that have a positive correlation and fields that have a negative correlation on student success will be highlighted. Once the fields of interest are determined, further research can be done into understanding if there is any causality, and if so, why.