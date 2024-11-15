select name, duration
from track
order by duration desc
limit 1


select name, duration
from track
where duration >= 210


select name
from collection
where '2022-01-01' <= release and '2023-12-31' >= release


select name
from singer
where name like '% %' = false 


select name
from track
where name like '%d%'


select genre.name as genre_name, count(distinct singer_genre.singer_id)
from singer_genre
join genre on singer_genre.genre_id = genre.id
group by genre.name
order by genre.name


select singer.name 
from singer
join singer_album on singer.id = singer_album.singer_id
join album on singer_album.album_id = album.id
where album.release < '2020-01-01' or album.release > '2020-12-31'
group by singer.name 
order by singer.name 


select collection.name
from collection
join collection_tracks on collection.id = collection_tracks.collection_id 
join track on collection_tracks.track_id = track.id
join singer_album on track.album_id = singer_album.album_id 
join singer on singer_album.singer_id = singer.id
where singer.name = 'Juice WRLD'
group by collection.name
order by collection.name