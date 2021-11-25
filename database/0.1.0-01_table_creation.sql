USE `magnesie_result_storage`;

CREATE TABLE IF NOT EXISTS `results` (
    `id` INT PRIMARY KEY NOT NULL,
    `model_path` VARCHAR(200) NOT NULL,
    `texture_path` VARCHAR(200) NOT NULL
);

COMMIT;