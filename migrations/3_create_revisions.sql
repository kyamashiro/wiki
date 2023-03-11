-- +migrate Up
CREATE TABLE `revisions`
(
    `id`         int                                     NOT NULL AUTO_INCREMENT,
    `title`      varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    `body`       text COLLATE utf8mb4_general_ci         NOT NULL,
    `version`    int                                     NOT NULL,
    `page_id`    int                                     NOT NULL,
    `created_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `revisions_pages_id_fk` (`page_id`),
    CONSTRAINT `revisions_pages_id_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- +migrate Down
DROP TABLE revisions;
