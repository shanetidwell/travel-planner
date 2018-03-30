Delete from activities
where category_id in (
    Select id
    from categories
    where location_id = ${location_id};
)

DELETE FROM categories
where location_id =${location_id};

DELETE FROM locations
where id = ${location_id};

select * 
From locations
where user_id = ${user_id};

