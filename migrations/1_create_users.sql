-- +migrate Up
CREATE TABLE `users`
(
    `id`      int(11)      NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`    varchar(255) NOT NULL COMMENT 'name',
    `email`   varchar(255) NOT NULL COMMENT 'email',
    `salt`    varchar(255) NOT NULL COMMENT 'salt',
    `salted`  varchar(255) NOT NULL COMMENT 'salted password',
    `created` datetime     NOT NULL DEFAULT NOW() COMMENT 'when created',
    `updated` datetime     NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP COMMENT 'when last updated',
    PRIMARY KEY (`id`),
    UNIQUE KEY (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4;

-- +migrate Down
DROP TABLE users;
