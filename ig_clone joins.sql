select dayname(created_at) as billa_day, count(*) as raja_billa
from users group by billa_day order by raja_billa desc limit 1;



select username from photos  right join users 
on users.id = photos.user_id where image_url is null;

select username, photo_id ,  count(*) as countt from likes inner join users 
on likes.photo_id = users.id group by photo_id order by countt desc limit 1;


select * from tags join photo_tags 
on tags.id = photo_tags.photo_id ;