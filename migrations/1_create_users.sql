-- +migrate Up
CREATE TABLE `users`
(
    `id`         int                                     NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `email`      varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `salt`       varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `salted`     varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `created_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- +migrate Down
DROP TABLE users;
