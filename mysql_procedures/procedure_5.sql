use it_project;
delimiter $$
create procedure comp1(id varchar(10),ch1 varchar(1000),ch2 varchar(1000))
begin
if("A0101"=id)then
	select * from attack_on_titans where ch1=Character_name;  
    select * from attack_on_titans where ch2=Character_name;
elseif ("A012"=id)then
	select * from my_hero_academia where ch1=Character_name;
    select * from my_hero_academia where ch2=Character_name;
elseif("A0103"=id)then
	select * from blue_lock where ch1=Character_name;
    select * from blue_lock where ch2=Character_name;
elseif("A0105"=id)then
	select * from monster where ch1=Character_name;
    select * from monster where ch2=Character_name;
elseif("A0104"=id)then
	select * from classroom_of_the_elite where ch1=Character_name;
    select * from classroom_of_the_elite where ch2=Character_name;
end if;
end $$
drop procedure comp1;