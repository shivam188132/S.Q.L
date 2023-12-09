drop database ig_clone;
create database ig_clone;
use ig_clone ;

create table users ( 
	id integer auto_increment primary key,
    username varchar(255) unique not null,
    created_at timestamp default current_timestamp );

create table PHOTOS ( 
	 id integer auto_increment primary key,
	 image_url varchar(255),
	 user_id int,
	 created_at timestamp default current_timestamp,
     foreign key (user_id ) references users(id) 
     );


create table comments(
	id integer auto_increment primary key,
    comment_text varchar(300) not null ,
    user_id integer not null,
    photo_id integer not null,
    created_at timestamp default current_timestamp,
    foreign key(photo_id) references photos(id) ,
    foreign key( user_id ) references users(id) 
    );
    
    
create table likes( 
	user_id integer not null,
    photo_id integer not null,
    created_at timestamp default current_timestamp,
    foreign key(photo_id) references users(id),
    foreign key(user_id) references users(id) 
    );

create table _follows (
	follower_id integer not null,
    followee_id integer not null,
    created_at timestamp default current_timestamp, 
    foreign key( followee_id) references users(id),
    foreign key(follower_id ) references users(id),
    primary key (follower_id, followee_id )
    );



CREATE TABLE tags (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

show tables;
