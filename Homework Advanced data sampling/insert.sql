insert into singer(name)
values ('Travis Scott'),
       ('Juice WRLD'),
       ('Eminem'),
       ('Lil Uzi Vert'),
       ('Kendrick Lamar');

insert into genre(name)
values ('Hip-Hop'),
       ('Emo-Rap'),
       ('Trap');

insert into album(name, release)
values ('Goodbye & Good Riddance', '2018-05-23'),
       ('Astroworld', '2018-08-03'),
       ('Eternal Atake', '2020-03-06'),
       ('DAMN.', '2017-04-14');

insert into track(name, duration, album_id)
values ('Lucid Dreams', 240, 1),
       ('SICKO MODE', 312, 2),
       ('Stargazing', 240, 2),
       ('XO TOUR Llif3', 195, 3),
       ('P2', 180, 3),
       ('Legends', 190, 1),
       ('My Way', 230, 1),
			 ('MyWay', 50, 1);

insert into collection(name, release)
values ('Echoes of the Streets', '2023.05.15'),
       ('Beats & Dreams', '2019.11.22'),
       ('Trap Dimensions', '2018.02.08'),
       ('Rhymes & Vibes', '2023.08.30');

insert into singer_genre(singer_id, genre_id)
values (1, 2),
       (1, 1),
       (2, 1),
       (2, 3),
       (3, 1),
       (4, 1),
       (4, 3),
       (5, 1);

insert into singer_album(singer_id, album_id)
values (1, 1),
       (2, 2),
       (3, 2),
       (4, 3),
       (5, 4);

insert into collection_tracks(track_id, collection_id)
values (2, 1),
       (4, 1),
       (1, 2),
       (6, 2),
       (3, 3),
       (5, 3),
       (3, 4),
       (6, 4),
       (7, 1);
