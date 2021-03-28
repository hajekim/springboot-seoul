-- 짤 테이블 생성
CREATE TABLE tbl_jjal (
    jjal_id INT NOT NULL AUTO_INCREMENT COMMENT '짤 번호 (PK)' PRIMARY KEY,
    addr VARCHAR(3000) NOT NULL COMMENT '짤 위치'
)  COMMENT '짤';

-- 유저 테이블 생성
CREATE TABLE tbl_user (
    user_id VARCHAR(20) NOT NULL COMMENT 'ID (PK)' PRIMARY KEY,
    password VARCHAR(50) NOT NULL COMMENT '패스워드',
    nickname VARCHAR(100) NOT NULL COMMENT '닉네임',
    email VARCHAR(50) NOT NULL COMMENT '이메일'
)  COMMENT '유저';

-- 해시태그 테이블 생성
CREATE TABLE tbl_hashtag (
    tag_id INT NOT NULL AUTO_INCREMENT COMMENT '태그 번호 (PK)' PRIMARY KEY,
    text VARCHAR(2000) NOT NULL COMMENT '태그'
)  COMMENT '해쉬태그';

-- 짤등록자 테이블 생성
CREATE TABLE tbl_jjalfrom (
    jjal_id INT NOT NULL COMMENT '짤 번호 (PK)' PRIMARY KEY,
    user_id VARCHAR(20) NOT NULL COMMENT 'ID (PK)'
)  COMMENT '짤등록자';

-- 짤태그 테이블 생성
CREATE TABLE tbl_jjaltag (
    jjal_id INT NOT NULL COMMENT '짤 번호 (PK)',
    tag_id INT NOT NULL COMMENT '태그 번호',
    PRIMARY KEY (jjal_id,tag_id)
)  COMMENT '짤태그';

-- FK 설정
alter table tbl_jjalfrom add constraint tbl_jjalfrom_jjal_id foreign key (jjal_id) references tbl_jjal(jjal_id);
alter table tbl_jjalfrom add constraint tbl_jjalfrom_user_id foreign key (user_id) references tbl_user(user_id);
alter table tbl_jjaltag add constraint tbl_jjaltag_jjal_id foreign key (jjal_id) references tbl_jjal(jjal_id);
alter table tbl_jjaltag add constraint tbl_jjaltag_tag_id foreign key (tag_id) references tbl_hashtag(tag_id);