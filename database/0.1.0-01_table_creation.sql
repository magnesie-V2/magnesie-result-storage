USE `magnesie_result_storage`;

CREATE TABLE IF NOT EXISTS `results` (
    `id` INT PRIMARY KEY NOT NULL,
    `path` VARCHAR(200) NOT NULL
);

COMMIT;