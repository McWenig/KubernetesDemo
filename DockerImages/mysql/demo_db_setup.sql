Use demo_db;

CREATE TABLE  act (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name Varchar(128) not null
);

CREATE TABLE  protocol (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name Varchar(128) not null,
act_id INT,
INDEX act_ind (act_id),
    FOREIGN KEY (act_id)
        REFERENCES act(id)
);

insert into act set name='test1';
insert into act set name='test2';
insert into act set name='test3';
insert into act set name='test4';

insert into protocol (name, act_id) select name,id from act where name='test1';
insert into protocol (name, act_id) select name,id from act where name='test2';
insert into protocol (name, act_id) select name,id from act where name='test3';
insert into protocol (name, act_id) select name,id from act where name='test4';

select * From act;
select * from protocol;