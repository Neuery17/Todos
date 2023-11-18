-- Inserting users
INSERT INTO "user" (username, email, password, geschlecht, biography, age, date_created)
VALUES
    ('john_doe', 'john@example.com', 'password123', 'Male', 'A software developer', 30, CURRENT_TIMESTAMP),
    ('jane_doe', 'jane@example.com', 'pass456', 'Female', 'An artist and designer', 28, CURRENT_TIMESTAMP),
    ('bob_smith', 'bob@example.com', 'securepass', 'Male', 'Entrepreneur and adventurer', 35, CURRENT_TIMESTAMP);

-- Inserting todoLists
INSERT INTO todoList (name, isPublic, date_created, creator_id)
VALUES
    ('Work Tasks', true, CURRENT_TIMESTAMP, 1),
    ('Personal Goals', false, CURRENT_TIMESTAMP, 2),
    ('Project XYZ', true, CURRENT_TIMESTAMP, 3);

-- Inserting todos
INSERT INTO todo (content, todolist_id)
VALUES
    ('Finish report', 1),
    ('Exercise for 30 minutes', 2),
    ('Meeting with team', 1),
    ('Create project proposal', 3);

-- Inserting badges
INSERT INTO badge (text, color)
VALUES
    ('Important', 'red'),
    ('Personal', 'blue'),
    ('Urgent', 'orange'),
    ('Completed', 'green');

-- Inserting todoList_badge associations
INSERT INTO todoList_badge (badge_id, todolist_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 1),
    (4, 3);