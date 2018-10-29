insert into usr (id, username, password, active)
    values (1, 'admin', '123', true);
insert into role
    values (1, 'admin'), (2, 'user');
insert into user_role
    values (1, 1), (1, 2);
