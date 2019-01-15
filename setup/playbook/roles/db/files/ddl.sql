SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS user;


/* Create Tables */

CREATE TABLE user
(
	-- 自動インクリメントのID
	id int unsigned NOT NULL AUTO_INCREMENT COMMENT '自動インクリメントのID',
	mail_address varchar(256) NOT NULL COMMENT 'アカウント登録時に入力されたメールアドレス。',
	-- 論理削除日付
	deleted_at datetime COMMENT '論理削除日付not nullで削除データと判断',
	PRIMARY KEY (id),
	UNIQUE (id)
) COMMENT = 'アカウントテーブル';
