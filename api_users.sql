/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33-0ubuntu0.22.04.2)
 Source Host           : localhost:3306
 Source Schema         : dart

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33-0ubuntu0.22.04.2)
 File Encoding         : 65001

 Date: 16/06/2023 14:46:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_users
-- ----------------------------
DROP TABLE IF EXISTS `api_users`;
CREATE TABLE `api_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `webhook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_addresses` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of api_users
-- ----------------------------
BEGIN;
INSERT INTO `api_users` (`id`, `full_name`, `email`, `domain`, `password`, `created_at`, `updated_at`, `webhook_url`, `ip_addresses`) VALUES (1, 'Nuwan Tharanga', 'hantharanga0008@gmail.com', 'https://yours-to-hold-member.test/', '$2y$10$x9DXyPHRXJwE1AbVtTdY0OrvMnZD8cC1v7eCG6L0G43/ygArBVt0K', '2022-06-01 17:21:51', '2023-05-04 06:55:24', 'https://yours-to-hold-member.test/', '127.0.0.1,123.231.106.144');
INSERT INTO `api_users` (`id`, `full_name`, `email`, `domain`, `password`, `created_at`, `updated_at`, `webhook_url`, `ip_addresses`) VALUES (2, 'tharanga', 'tharanga@gmail.com', 'http://yours-to-hold-member.test', '$2y$10$Mi8PGeUG3TDkxMoXkTf.E.mRoyQX4ng0wu8Yho3q/FrCK3tVNiQJi', '2022-06-02 09:44:35', '2022-06-22 05:32:24', 'https://yours-to-hold-member.test/', '127.0.0.1');
INSERT INTO `api_users` (`id`, `full_name`, `email`, `domain`, `password`, `created_at`, `updated_at`, `webhook_url`, `ip_addresses`) VALUES (3, 'test api user', 'testapi@123.lk', 'test.123.lk', '$2y$10$rjfVsvvkclzOfe.i7xyqBOyes9QsmnfPuj7.DJcUuIpUutXk8Yffq', '2023-01-11 08:06:26', '2023-05-04 06:43:01', '', '123.231.106.144');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
