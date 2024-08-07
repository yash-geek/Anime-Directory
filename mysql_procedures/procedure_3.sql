use it_project;
delimiter $$
create procedure character_display(input varchar(1000))
begin
declare id varchar(10);
select anime_id into id from anime where input=Anime_name;
if(input="Attack On Titan(Shingeki No Kyojin")then
	select Character_name,anime_id from attack_on_titans where anime_id=id;
elseif (input="My Hero Academia")then
	select Character_name,anime_id from my_hero_academia where anime_id=id;
elseif(input="Blue Lock")then
	select Character_name,anime_id from blue_lock where anime_id=id;
elseif(input="Monster")then
	select Character_name,anime_id from monster where anime_id=id;
elseif(input="Classroom of the elite")then
	select Character_name,anime_id from classroom_of_the_elite where anime_id=id;
end if;
end $$
drop procedure if exists character_display;