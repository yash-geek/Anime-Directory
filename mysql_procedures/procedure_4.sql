use it_project;
delimiter $$
create procedure chardetails(id varchar(10),named varchar(1000))
begin
declare anime_called varchar(1000);
select Anime_name into anime_called from anime where id=anime_id;
if(anime_called="Attack On Titan(Shingeki No Kyojin")then
	select * from attack_on_titans where named=Character_name;
elseif (anime_called="My Hero Academia")then
	select * from my_hero_academia where named=Character_name;
elseif(anime_called="Blue Lock")then
	select * from blue_lock where named=Character_name;
elseif(anime_called="Monster")then
	select * from monster where named=Character_name;
elseif(input="Classroom of the elite")then
	select Character_name,anime_id from classroom_of_the_elite where anime_id=id;
end if;
end $$
drop procedure chardetails;