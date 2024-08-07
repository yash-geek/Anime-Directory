delimiter $$
create procedure comp2(id varchar(10),ch1 varchar(1000),id2 varchar(10),ch2 varchar(1000))
begin
if("A0101"=id)then
	select * from attack_on_titans where ch1=Character_name;  
elseif ("A012"=id)then
	select * from my_hero_academia where ch1=Character_name;
elseif("A0103"=id)then
	select * from blue_lock where ch1=Character_name;
elseif("A0105"=id)then
	select * from monster where ch1=Character_name;
elseif("A0104"=id)then
	select * from classroom_of_the_elite where ch1=Character_name;
end if;
if("A0101"=id2)then
	select * from attack_on_titans where ch2=Character_name;  
elseif ("A012"=id2)then
	select * from my_hero_academia where ch2=Character_name;
elseif("A0103"=id2)then
	select * from blue_lock where ch2=Character_name;
elseif("A0105"=id2)then
	select * from monster where ch2=Character_name;
elseif("A0104"=id2)then
	select * from classroom_of_the_elite where ch2=Character_name;
end if;
end $$
drop procedure comp2;