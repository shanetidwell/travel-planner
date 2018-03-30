CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name varchar,
    email varchar,
    auth_id varchar
);
CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users,
    city varchar,
    state varchar,
    country varchar
);
CREATE table categories (
    id serial PRIMARY KEY,
    location_id integer REFERENCES locations,
    name varchar
);
CREATE table activities (
    id serial PRIMARY KEY,
    category_id integer REFERENCES categories,
    name varchar,
    image_url text
);