# SQL Practice on mystery.knightlab.com

select * 
from crime_scene_report
where(date = 20180115 and type = 'murder' and city = 'SQL City');

# Security footage shows that there were 2 witnesses. The first witness lives at the last house 
# on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".

select id 
from person
where ((name like 'Annabel%') and (address_street_name like 'Franklin Ave'));
              
# id = 16371          

select * 
from person
where address_street_name like 'Northwestern%'
order by address_number DESC;

#14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949

select * 
from interview
where person_id in ('16371', '14887')

# person_id	transcript
# 14887	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
# The membership number on the bag started with "48Z". Only gold members have those bags. 
# The man got into a car with a plate that included "H42W".
#
# 16371	I saw the murder happen, and I recognized the killer from my gym when I was 
# working out last week on January the 9th.

select * 
from get_fit_now_check_in as gfn
	join get_fit_now_member as gfm on (gfn.membership_id = gfm.id)
	join person on (gfm.person_id = person.id)
	join drivers_license as dl on (person.license_id = dl.id)
where (membership_id like '48Z%') and (dl.plate_number like '%H42W%');

# 48Z55, 67318, Jeremy Bowers

#Congrats, you found the murderer! But wait, there's more... If you think 
you're up for a challenge, try querying the interview transcript of the murderer 
to find the real villain behind this crime. If you feel especially confident in your 
SQL skills, try to complete this final step with no more than 2 queries. 
Use this same INSERT statement with your new suspect to check your answer.

select * 
from interview
where (person_id = '67318');

# I was hired by a woman with a lot of money. I don't know her name but I know she's 
# around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. 
# I know that she attended the SQL Symphony Concert 3 times in December 2017.

select * 
from drivers_license
	join person on (person.license_id = drivers_license.id)
	join facebook_event_checkin on (person.id = facebook_event_checkin.person_id)
where (hair_color = 'red' 
	   and car_make = 'Tesla' 
	   and gender = 'female' 
	   and event_name = 'SQL Symphony Concert');

#  id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model	id	name	license_id	address_number	address_street_name	ssn	person_id	event_id	event_name	date
# 202298	68	66	green	red	female	500123	Tesla	Model S	99716	Miranda Priestly	202298	1883	Golden Ave	987756388	99716	1143	SQL Symphony Concert	20171206


# Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!