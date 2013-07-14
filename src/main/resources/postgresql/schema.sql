drop table if exists ss_task;
drop table if exists ss_user;

create table ss_task (
	id bigserial,
	title varchar(128) not null,
	description varchar(255),
	user_id bigint not null,
    primary key (id)
);

create table ss_user (
	id bigserial,
	login_name varchar(64) not null unique,
	name varchar(64) not null,
	password varchar(255) not null,
	salt varchar(64) not null,
	roles varchar(255) not null,
	register_date timestamp(0) without time zone,
	primary key (id)
);