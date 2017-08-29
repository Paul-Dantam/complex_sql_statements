-- Using the todolist database from the previous project, write another set of SQL statements in a file called todo2.sql.

-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
-- Write a SELECT statement to find all incomplete todos with priority 3.
-- Write a SELECT statement to find the number of incomplete todos by priority.
-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.

insert into todos (title, details, priority, created_at, completed_at)
    values
        ('walk dog', '10 minute walk', '2017-7-21 12:30:30', '2017-7-21 1:15:15');

insert into todos (title, priority, created_at)
    values
        ('change oil', 3, '2017-7-30 2:20:10'),
        ('clean chicken coop', 2, '2017-8-3 16:30:30')
        ('prep stock', 4, '2017-8-15 12:10:15')
        ('build garden beds', 2, '2017-6-10 12:15:10');

select * from todos where completed_at = null;
select * from todos where priority >1;

update todos set completed_at = '2017-8-28 15:12:10' where id = 3;

delete from todos where completed_at !null;


