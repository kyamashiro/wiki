-- +migrate Up
CREATE TABLE `pages`
(
    `id`         int                                     NOT NULL AUTO_INCREMENT,
    `title`      varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `body`       text COLLATE utf8mb4_general_ci         NOT NULL,
    `created_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- +migrate Down
DROP TABLE pages;
