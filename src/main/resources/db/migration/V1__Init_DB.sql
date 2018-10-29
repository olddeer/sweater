create sequence hibernate_sequence start 1 increment 1;

create table message (
    message_id int8 not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id int8,
    primary key (message_id)
);

create table like_user (
   user_id int8 not null,
   message_id int8 not null,
      primary key (message_id,user_id)
);

create table role (
    role_id int8 not null,
    name varchar(255),
      primary key ( role_id)
);

create table user_role (
    user_id int8 not null,
     role_id int8 not null,
     primary key ( role_id,  user_id)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk2
    foreign key (user_id) references usr;

alter table if exists like_user
    add constraint message_user_fk22
    foreign key (user_id) references usr;

alter table if exists like_user
    add constraint message_user_fk
    foreign key (message_id) references message;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (role_id) references role;
