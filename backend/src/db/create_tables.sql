DROP TABLE todo, todoList, "user", badge;

CREATE TABLE IF NOT EXISTS "user"
(
    id           SERIAL PRIMARY KEY NOT NULL,
    username     VARCHAR(255)       NOT NULL,
    email        VARCHAR(255)       NOT NULL,
    password     VARCHAR(255)       NOT NULL,
    geschlecht   VARCHAR(255),
    biography    VARCHAR(1000),
    age          INTEGER,
    date_created timestamp(6)       NOT NULL
);

CREATE TABLE IF NOT EXISTS todoList
(
    id           SERIAL PRIMARY KEY NOT NULL,
    name         VARCHAR(255)       NOT NULL,
    isPublic     BOOLEAN            NOT NULL,
    date_created timestamp(6)       NOT NULL,
    creator_id   INTEGER            NOT NULL,
    FOREIGN KEY (creator_id) references "user" (id)
);

CREATE TABLE IF NOT EXISTS todo
(
    id          SERIAL PRIMARY KEY NOT NULL,
    content     VARCHAR            NOT NULL,
    todolist_id INTEGER            NOT NULL,
    FOREIGN KEY (todolist_id) references todoList (id)
);

CREATE TABLE IF NOT EXISTS badge
(
    id          SERIAL PRIMARY KEY NOT NULL,
    text        VARCHAR(255)       NOT NULL,
    color       VARCHAR(255)       NOT NULL
);

CREATE TABLE IF NOT EXISTS todoList_badge
(
    badge_id INTEGER NOT NULL,
    todolist_id INTEGER NOT NULL,

    FOREIGN KEY (todolist_id) REFERENCES todoList(id),
    FOREIGN KEY (badge_id) REFERENCES badge(id)
);



