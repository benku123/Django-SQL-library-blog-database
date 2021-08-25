drop table if exists author;
drop table if exists category;
drop table if exists publisher;
drop table if exists book;
drop table if exists users;
drop table if exists notification;
drop table if exists comments;
drop table if exists likes;
drop table if exists bookview;


create table author(
	id int primary key identity not null,
	familyName char(20) not null,
	firstName char(20) not null,
	Email varchar(50),
);

create table category(
	id int primary key identity,
	CategoryName varchar(100) unique,
);


create table publisher(
	publisher_name varchar(50) unique,
	email varchar(30),
);


create table book(
	slug varchar(50) not null unique, --it behaves as a link to certain book	
	title varchar(2000),
	content varchar(5000),
	price float,
	pageNum int not null,
	category varchar(100) not null foreign key references category(CategoryName),
	publisher varchar(50) foreign key references publisher(publisher_name),
	authorid int foreign key references author(id),
);


create table users(
	username varchar(50) unique not null,
	email varchar(50) not null,
	password varchar(50) not null,
);


--if a member want to connect with staff or administrators
create table notification(
	feedbackid int primary key identity,
	title varchar(20) not null,
	text varchar(2000) not null,
	email varchar(100) not null,
);


--comments under each book
create table comments(
	commentId int primary key identity,
	book varchar(50) foreign key references book(slug),
	body char(300) not null,
	username varchar(50) foreign key references users(username)
)


--how many people viewed a book
create table bookview(
	bookviewId int primary key identity,
	username varchar(50) foreign key references users(username)
)

--how many people like a book
create table likes(
	likeId int primary key identity,
	username varchar(50) foreign key references users(username)
)


