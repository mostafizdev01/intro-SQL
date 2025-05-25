CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)NOT NULL
)

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')

SELECT * from "user";
CREATE Table post(
    id SERIAL PRIMARY KEY,
    title VARCHAR(200)NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE -- (ON DELETE CASCADE => main id delte korte ekhan theke o delete hoye jabe || ON DELETE SET NULL => main id detele korle null hoye jabe || on delete set default DEFAULT 2 => main id delete hoye gele default 2 id er man nibe.. ) --- REFERENCES mane ami user table er id er sate connection create korlam..
)

drop table post;

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunney day with akash!', 2),
('Batash just shared an amazing recipe', 1),
('Exploring adventures with sagor.', 4),
('Nodi wisdom always leaves em inspired', 4);

SELECT * from post;

DELETE FROM "user"
WHERE id = 4;


-- join useing
SELECT title, username FROM post
JOIN "user" ON post.user_id = "user".id; -- join mane user table ta post table er sate join korlam and post er user_id er man ta user.id er man kore dilam..


SELECT post.id FROM post -- post table er id ta show korbe..
JOIN "user" ON post.user_id = "user".id; --- duita table er mordhe join deuya k inner join bole..