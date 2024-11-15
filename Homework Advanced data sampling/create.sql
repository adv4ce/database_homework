create table if not exists genre(
	id SERIAL primary key,
	name VARCHAR(60) not null
);


create table if not exists singer(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists album(
  id SERIAL primary key,
  name VARCHAR(60) not null,
  release DATE
);

create table if not exists track (
  id SERIAL primary key,
  name VARCHAR(60) not null,
  duration INT not null,
  album_id INT references album(id) on delete cascade
);

create table if not exists collection(
  id SERIAL primary key,
  name VARCHAR(60) not null,
  release DATE
);

create table if not exists singer_genre(
	singer_id INT references singer(id) on delete cascade,
	genre_id INT references genre(id) on delete cascade,
	primary key(singer_id, genre_id)
);

create table if not exists singer_album(
  singer_id INT references singer(id) on delete cascade,
  album_id INT references album(id) on delete cascade,
  primary key(singer_id, album_id)
);

create table if not exists collection_tracks(
  track_id INT references track(id) on delete cascade,
  collection_id INT references collection(id) on delete cascade,
  primary key(track_id, collection_id)
);