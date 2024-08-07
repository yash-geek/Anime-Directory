use it_project;
delimiter $$
create procedure ratings(id varchar(10))
begin
select  Manga_By,Animating_studio,IMDB_Rating,Mal_Score from anime where id=anime_id;
update anime set viewers=viewers+1 where anime_id=id;
end $$
drop procedure ratings;