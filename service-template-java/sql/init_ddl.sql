# todo tag modify me
# CREATE DATABASE IF NOT EXISTS `alpha_hunter`;
# USE `alpha_hunter`;
#
# DROP TABLE IF EXISTS `twitter_app`;
# CREATE TABLE `twitter_app`
# (
#     `id`          BIGINT(20)    NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `name`        VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'name',
#     `api_key`     VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api key',
#     `api_secret`  VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api secret',
#     `description` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT '描述',
#     `status`      VARCHAR(255)  NOT NULL COMMENT '状态',
#     `created_at`  DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`  DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'twitter app';
#
# DROP TABLE IF EXISTS `twitter_oauth`;
# CREATE TABLE `twitter_oauth`
# (
#     `id`            BIGINT(20)    NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `name`       VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT 'name',
#     `api_key`   VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api key',
#     `api_secret`          VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api secret',
#     `description`       VARCHAR(1024)       NOT NULL DEFAULT '' COMMENT '描述',
#     `status`  VARCHAR(255)    NOT NULL  COMMENT '状态',
#     `created_at`    DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`    DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'twitter oauth';
#
# DROP TABLE IF EXISTS `twitter_user`;
# CREATE TABLE `twitter_user`
# (
#     `id`                 BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `user_id`            VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'twitter user id',
#     `name`               VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'twitter name',
#     `screen_name`        VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'twitter screen name',
#     `description`        VARCHAR(255) NOT NULL DEFAULT '' COMMENT 'profile的描述',
#     `followers_count`    BIGINT(20)   NOT NULL DEFAULT 0 COMMENT '粉丝数量',
#     `friends_count`      BIGINT(20)   NOT NULL DEFAULT 0 COMMENT '关注的人数',
#     `profile_image`      VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'profile头像',
#     `profile_banner`     VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'profile banner',
#     `account_created_at` DATETIME     NOT NULL COMMENT 'twitter账号创建时间',
#     `created_at`         DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`         DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
#     UNIQUE KEY `uniq_user_id` (`user_id`),
#     UNIQUE KEY `uniq_screen_name` (`screen_name`)
# ) COMMENT 'twitter user';
#
# DROP TABLE IF EXISTS `user`;
# CREATE TABLE `user`
# (
#     `id`               BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `twitter_user_id`  BIGINT(20) NOT NULL,
#     `telegram_user_id` BIGINT(20) NOT NULL,
#     `created_at`       DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`       DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
#     UNIQUE KEY `uniq_twitter_user_id` (`twitter_user_id`),
#     UNIQUE KEY `uniq_telegram_user_id` (`telegram_user_id`)
# ) COMMENT 'user';
#
# DROP TABLE IF EXISTS `tracking_target`;
# CREATE TABLE `tracking_target`
# (
#     `id`                  BIGINT(20)    NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `no`                  INT(11)       NOT NULL DEFAULT 0 COMMENT '序号',
#     `user_id`             BIGINT(20)    NOT NULL COMMENT 'user id',
#     `twitter_user_id`     BIGINT(20)    NOT NULL COMMENT 'twitter user id',
#     `tags`                VARCHAR(2048) NOT NULL DEFAULT '' COMMENT '标签的id, json数组',
#     `is_track_new_follow` TINYINT(1)    NOT NULL DEFAULT 0 COMMENT '是否追踪新的关注',
#     `is_track_new_tweet`  TINYINT(1)    NOT NULL DEFAULT 0 COMMENT '是否追踪新的tweet',
#     `is_delete`           TINYINT(1)    NOT NULL DEFAULT 0 COMMENT '是否删除',
#     `created_at`          DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`          DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
#     UNIQUE KEY `uniq_user_id_twitter_user_id` (`user_id`, `twitter_user_id`)
# ) COMMENT 'tracking target';
#
# DROP TABLE IF EXISTS `tracked_alpha`;
# CREATE TABLE `tracked_alpha`
# (
#     `id`                 BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `tracking_target_id` BIGINT(20) NOT NULL COMMENT 'tracking target id',
#     `twitter_user_id`    BIGINT(20) NOT NULL COMMENT 'twitter user id',
#     `created_at`         DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`         DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'tracked alpha';
#
# DROP TABLE IF EXISTS `tag`;
# CREATE TABLE `tag`
# (
#     `id`         BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `user_id`    BIGINT(20)   NOT NULL COMMENT 'user id',
#     `name`       VARCHAR(255) NOT NULL COMMENT 'tag name',
#     `created_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'tag';
#
# DROP TABLE IF EXISTS `watching_alpha`;
# CREATE TABLE `watching_alpha`
# (
#     `id`              BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `user_id`         BIGINT(20) NOT NULL COMMENT 'user id',
#     `twitter_user_id` BIGINT(20) NOT NULL COMMENT 'twitter user id',
#     `created_at`      DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`      DATETIME   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'watching alpha';
#
# DROP TABLE IF EXISTS `telegram_user`;
# CREATE TABLE `telegram_user`
# (
#     `id`            BIGINT(20)    NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     `name`       VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT 'name',
#     `api_key`   VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api key',
#     `api_secret`          VARCHAR(255)  NOT NULL DEFAULT '' COMMENT 'api secret',
#     `description`       VARCHAR(1024)       NOT NULL DEFAULT '' COMMENT '描述',
#     `status`  VARCHAR(255)    NOT NULL  COMMENT '状态',
#     `created_at`    DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
#     `updated_at`    DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
# ) COMMENT 'telegram user';
#
# todo tag modify me end
