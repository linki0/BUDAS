# BUDAS

This is the first version of BUDAS (also known as Archalyze in the past) database system
This version of the code expected you have the nginx server and mySQL server available.

We have another version that can be set up from scratch. E-mail David Lini (kdlin@smu.edu) if you need that. 

Project Description:

The Building Database and Analytics System (BuDAS) is an all-in-one floor plan recognition and analysis system. Upload scans or images of floor plans (jpeg) and use BuDAS to detect rooms, doors, room dimensions, and other plan information.
We employ a semi-automatic detection approach; whereby users can revise or add to automatic detection results. This allows BuDAS to work on a wide variety of floor plans, regardless of symbols or drawing conventions. Currently, however, BuDAS is designed primarily for residential floor plans. The database is populated with information related to homes, but the extractor (plan recognition) should detect rooms of any building type. 

1.	Upload an image of a floor plan (jpeg)
2.	Run the BuDAS Python script (or use the executable option) - extractor
3.	Revise the extractor results in the annotator
4.	Save the annotator results and then upload to the BuDAS database or a program of your choosing
5.	If using the BuDAS database, use built-in analysis (analyzer) and search functions

Funding: BuDAS is made possible by the generous funding of the National Endowment for the Humanities and Baylor University’s Vice Provost for Research. 

