CREATE TABLE users
(
  id               SERIAL PRIMARY KEY NOT NULL ,
  username         VARCHAR            NOT NULL,
  password         VARCHAR            NOT NULL
);

CREATE TABLE roles
(
  id               SERIAL PRIMARY KEY NOT NULL ,
  name             VARCHAR            NOT NULL
);

CREATE TABLE user_roles
(
  user_id          INTEGER NOT NULL,
  role_id          INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),
  CONSTRAINT user_roles_idx UNIQUE (user_id, role_id)
);

INSERT INTO users VALUES (1, 'proselyte', '$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);

