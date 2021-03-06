createdb todolist;

create table todos (
    id serial primary key,
    title varchar(255) not null,
    details varchar null default null,
    priority integer not null default 1,
    created_at timestamp not null,
    completed_at timestamp null
);


insert into todos (title, details, priority, created_at, completed_at)
    values
        ('walk dog',  '10 minute walk', 1, '2017-7-21 12:30:30', '2017-7-21 1:15:15'),
        ('build coop', 'put together new coops', 2, '2017-3-21 12:30:30', '2017-3-24 1:15:15'),
        ('install flood lights', '4 light sets', 3, '2017-7-21 12:30:30', '2017-7-21 1:15:15'),
        ('organize storage', 'cellar storage', 1, '2017-6-21 12:30:30', '2017-7-21 1:15:15'),
        ('organize kitchen', null, 3, '2017-7-24 12:30:30', '2017-7-28 1:15:15'),
        ('build rain barrel system',  'build filter and fit pvc to gutter', 1, '2017-5-21 12:30:30', '2017-6-1 1:15:15'),
        ('front end projects', 'finish all TIY frontend projects', 1, '2017-7-21 12:30:30', '2017-8-11 1:15:15');

insert into todos (title, priority, created_at)
    values
        ('change oil', 3, '2017-7-30 2:20:10'),
        ('clean chicken coop', 2, '2017-8-3 16:30:30'),
        ('prep stock', 1, '2017-8-15 12:10:15'),
        ('build garden beds', 1, '2017-6-10 12:15:10'),
        ('install fence around coop', 3, '2017-7-30 12:15:10'),
        ('clean gutters', 3, '2017-8-20 12:15:10'),
        ('replace insulation', 1, '2017-5-10 12:15:10'),
        ('brew mate', 5, '2017-8-25 12:15:10'),
        ('move dressers', 4, '2017-8-3 12:15:10'),
        ('clear path to creek', 1, '2016-11-30 12:15:10'),
        ('rent cable layer', 4, '2017-6-10 12:15:10'),
        ('find and run cables in crawlspace', 1, '2017-8-20 12:15:10'),
        ('install cross hatch panels around deck', 3, '2017-8-5 12:15:10');




select * from todos where completed_at is null and priority = 3;

select * from todos where completed_at is null order by priority asc;

select * from todos where created_at > current_timestamp - interval '30 days' order by priority asc;

select * from todos where priority = 1 and created_at = (select min(created_at) from todos where priority =1);






