use it_project;
desc anime;
delimiter $$
create procedure anime_display()
begin
select anime_id, Anime_name from anime;
end$$
