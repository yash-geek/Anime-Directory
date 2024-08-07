use it_project;
delimiter $$
create procedure display(named varchar(1000))
begin
select * from anime where Anime_name=named;
update anime set viewers=viewers+1 where Anime_name=named;
end$$