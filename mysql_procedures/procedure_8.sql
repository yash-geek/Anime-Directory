use it_project;
delimiter $$
create procedure details(id varchar(10))
begin
select Anime_name,Manga_Chapters,Seasons,viewers from anime where anime_id=id;
update anime set viewers=viewers+1 where anime_id=id;
end $$