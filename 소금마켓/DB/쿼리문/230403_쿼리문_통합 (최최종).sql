DROP TABLE TRADE;
DROP TABLE DECLARATION;
DROP TABLE NOTE;
DROP TABLE F_REPLY;
DROP TABLE S_REPLY;
DROP TABLE SHARE_BOARD;
DROP TABLE FREE_BOARD;
DROP TABLE QNA;
DROP TABLE IMG_FILE;
DROP TABLE PRODUCT;
DROP TABLE USER_INFO;
DROP TABLE NOTICE;
DROP TABLE CATEGORY;
DROP TABLE GRADE;
DROP TABLE REGION;

DROP SEQUENCE SEQ_UNO;
DROP SEQUENCE SEQ_DNO;
DROP SEQUENCE SEQ_PNO;
DROP SEQUENCE SEQ_SNO;
DROP SEQUENCE SEQ_TNO;
DROP SEQUENCE SEQ_CNO;
DROP SEQUENCE SEQ_QNO;
DROP SEQUENCE SEQ_MNO;
DROP SEQUENCE SEQ_NOTICE;
DROP SEQUENCE SEQ_NOTE;
DROP SEQUENCE SEQ_SRNO;
DROP SEQUENCE SEQ_FRNO;
DROP SEQUENCE SEQ_REGION;
DROP SEQUENCE SEQ_INO;
DROP SEQUENCE SEQ_FNO;



--------------------------------------------------
--------------    지역     ------------------	
--------------------------------------------------
CREATE TABLE REGION (
	REGION_NO NUMBER PRIMARY KEY,
	REGION_NAME VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN REGION.REGION_NO IS '지역코드';
COMMENT ON COLUMN REGION.REGION_NAME IS '지역명';

--------------------------------------------------
--------------     회원 등급     ------------------	
--------------------------------------------------
CREATE TABLE GRADE (
	GRADE_NO NUMBER PRIMARY KEY,
	GRADE_NAME VARCHAR2(100) DEFAULT '천일염' NOT NULL,
	MIN_GRADE NUMBER,
	MAX_GRADE NUMBER
);
COMMENT ON COLUMN GRADE.GRADE_NO IS '등급번호';
COMMENT ON COLUMN GRADE.GRADE_NAME IS '등급명';
COMMENT ON COLUMN GRADE.MIN_GRADE IS '최소값';
COMMENT ON COLUMN GRADE.MAX_GRADE IS '최대값';



--------------------------------------------------
--------------    카테고리     ------------------	
--------------------------------------------------
CREATE TABLE CATEGORY(
    CATEGORY_NO NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(100) NOT NULL
    );
COMMENT ON COLUMN CATEGORY.CATEGORY_NO IS '카테고리 번호';
COMMENT ON COLUMN CATEGORY.CATEGORY_NAME IS '카테고리 이름';


--------------------------------------------------
--------------    공지사항     ------------------	
--------------------------------------------------
create table notice ( -- 공지사항 테이블 생성 
    notice_no number primary key,
    notice_title varchar2(200) not null,
    notice_content varchar2(1000) not null,
    create_date date default sysdate not null,
    notice_views number default 0 not null,
    delete_status char(1) default 'N' check(delete_status in ('Y', 'N')) not null );
    
--------------------------------------------------
--------------     회원 정보     ------------------	
--------------------------------------------------
CREATE TABLE USER_INFO (
	USER_NO NUMBER PRIMARY KEY,
	USER_PWD VARCHAR2(20) NOT NULL,
	USER_NAME VARCHAR2(20) NOT NULL,
	BIRTH DATE DEFAULT SYSDATE NOT NULL,
	PHONE CHAR(11) NOT NULL,
	EMAIL VARCHAR2(45),
	USER_ID VARCHAR2(20) NOT NULL UNIQUE,
	ENROLL_DATE DATE DEFAULT SYSDATE,
	STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	SALTY_SCORE NUMBER DEFAULT 36.5,
    GRADE_NO NUMBER NOT NULL,
    REGION_NO NUMBER NOT NULL,
    FOREIGN KEY(GRADE_NO) REFERENCES GRADE(GRADE_NO),
    FOREIGN KEY(REGION_NO) REFERENCES REGION(REGION_NO)
);
COMMENT ON COLUMN USER_INFO.USER_NO IS '회원번호';
COMMENT ON COLUMN USER_INFO.USER_PWD IS '회원비밀번호';
COMMENT ON COLUMN USER_INFO.USER_NAME IS '닉네임';
COMMENT ON COLUMN USER_INFO.BIRTH IS '생년월일';
COMMENT ON COLUMN USER_INFO.PHONE IS '전화번호';
COMMENT ON COLUMN USER_INFO.EMAIL IS '이메일';
COMMENT ON COLUMN USER_INFO.USER_ID IS '회원아이디';
COMMENT ON COLUMN USER_INFO.ENROLL_DATE IS '회원가입일';
COMMENT ON COLUMN USER_INFO.STATUS IS '회원탈퇴여부';
COMMENT ON COLUMN USER_INFO.SALTY_SCORE IS '염도';
COMMENT ON COLUMN USER_INFO.GRADE_NO IS '등급번호';
COMMENT ON COLUMN USER_INFO.REGION_NO IS '지역코드';


--------------------------------------------------
--------------    매물     ------------------	
--------------------------------------------------
create table product( -- PRODUCT 테이블 생성 
    product_no number primary key,
    product_name varchar2(100) not null,
    product_status char(1) default 'N' check (product_status in ('Y','N')) not null,
    price number not null,
    created_at date default sysdate not null,
    delete_status char(1) default 'N' check (delete_status in ('Y','N')) not null,
    description varchar(1000) not null,
    category_no number,
    foreign key (category_no) references category(category_no),
    user_no number,
    foreign key (user_no) references user_info(user_no),
    region_no number references region(region_no)
    );


--------------------------------------------------
--------------    상품 이미지     ------------------	
--------------------------------------------------

CREATE TABLE IMG_FILE (
	FILE_ID NUMBER PRIMARY KEY,
	CHANGE_FILE_NAME VARCHAR2(100) NOT NULL,
	CREATED_AT DATE DEFAULT SYSDATE NOT NULL,
	DELETE_STATUS CHAR(1) DEFAULT 'Y' NOT NULL,
	FILE_LEVEL CHAR(1) NOT NULL,
    PRODUCT_NO NUMBER NOT NULL,
	FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT(PRODUCT_NO)
);


--------------------------------------------------
--------------    1:1 문의     ------------------	
--------------------------------------------------
create table qna(  -- QNA 테이블 생성 
    qna_no number primary key,
    q_title varchar2(20) not null,
    q_content varchar2(1000) not null,
    q_date date default sysdate not null,
    qna_views number default 0 not null,
    a_content varchar2(1000) not null,
    a_date date default sysdate not null,
    user_no number not null,
    foreign key (user_no) references user_info(user_no)
    );

--------------------------------------------------
----------------    자유게시판  	------------------
--------------------------------------------------

CREATE TABLE FREE_BOARD (
	FREE_BOARD_NO NUMBER PRIMARY KEY,
	USER_NO NUMBER NOT NULL,
	BOARD_TITLE VARCHAR2(100) NOT NULL,
	BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
	BOARD_VIEWS NUMBER DEFAULT 0,
	DELETE_STATUS CHAR(1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
	CATEGORY VARCHAR2(100) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

COMMENT ON COLUMN FREE_BOARD.FREE_BOARD_NO IS '게시판번호';
COMMENT ON COLUMN FREE_BOARD.USER_NO IS '작성자회원번호';
COMMENT ON COLUMN FREE_BOARD.BOARD_TITLE IS '게시판제목';
COMMENT ON COLUMN FREE_BOARD.BOARD_CONTENT IS '게시판내용';
COMMENT ON COLUMN FREE_BOARD.CREATED_DATE IS '게시판작성일';
COMMENT ON COLUMN FREE_BOARD.BOARD_VIEWS IS '조회수';
COMMENT ON COLUMN FREE_BOARD.DELETE_STATUS IS 'Y/N-삭제되지않음/삭제됨';
COMMENT ON COLUMN FREE_BOARD.CATEGORY IS '수다, 질문, 꿀팁 .. 하드코딩';

--------------------------------------------------
----------------    나눔게시판  	------------------
--------------------------------------------------

CREATE TABLE SHARE_BOARD (
	SHARE_BOARD_NO NUMBER PRIMARY KEY,
	REGION_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
	BOARD_TITLE	VARCHAR2(100) NOT NULL,
	BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
	BOARD_VIEWS NUMBER DEFAULT 0,
	DELETE_STATUS CHAR(1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
	SHARE_STATUS CHAR(1) DEFAULT 'N' CHECK (SHARE_STATUS IN('Y', 'N')),
    FOREIGN KEY (REGION_NO) REFERENCES REGION (REGION_NO),
	FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

COMMENT ON COLUMN SHARE_BOARD.SHARE_BOARD_NO IS '게시판번호';
COMMENT ON COLUMN SHARE_BOARD.REGION_NO IS '지역코드';
COMMENT ON COLUMN SHARE_BOARD.USER_NO IS '작성자회원번호';
COMMENT ON COLUMN SHARE_BOARD.BOARD_TITLE IS '게시판제목';
COMMENT ON COLUMN SHARE_BOARD.BOARD_CONTENT IS '게시판내용';
COMMENT ON COLUMN SHARE_BOARD.CREATED_DATE IS '게시판작성일';
COMMENT ON COLUMN SHARE_BOARD.BOARD_VIEWS IS '조회수';
COMMENT ON COLUMN SHARE_BOARD.DELETE_STATUS IS 'Y/N-삭제되지않음/삭제됨';
COMMENT ON COLUMN SHARE_BOARD.SHARE_STATUS IS 'Y/N-완료/진행중 // 나눔완료 시 평점 +5점';

--------------------------------------------------
----------------    나눔 댓글   	---------------------
--------------------------------------------------

CREATE TABLE S_REPLY (
    REPLY_NO NUMBER PRIMARY KEY,
    BOARD_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    REPLY_CONTENT VARCHAR2 (2000) NOT NULL, 
    CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
    DELETE_STATUS CHAR (1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
    FOREIGN KEY (BOARD_NO) REFERENCES SHARE_BOARD (SHARE_BOARD_NO),
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);


--------------------------------------------------
----------------    자유 댓글   	---------------------
--------------------------------------------------

CREATE TABLE F_REPLY (
    REPLY_NO NUMBER PRIMARY KEY,
    BOARD_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    REPLY_CONTENT VARCHAR2 (2000) NOT NULL, 
    CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
    DELETE_STATUS CHAR (1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
    FOREIGN KEY (BOARD_NO) REFERENCES FREE_BOARD (FREE_BOARD_NO),
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);


--------------------------------------------------
----------------     쪽지   	---------------------
--------------------------------------------------

CREATE TABLE NOTE (
    NOTE_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    USER_NO2 NUMBER NOT NULL,
    SEND_TIME DATE DEFAULT SYSDATE NOT NULL,
    MESSAGE VARCHAR2 (2000) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO)
);

--------------------------------------------------
----------------     신고   	---------------------
--------------------------------------------------
CREATE TABLE DECLARATION (
	DECLARE_NO NUMBER PRIMARY KEY,
	DECLARE_TITLE VARCHAR2(100) NOT NULL,
	DECLARE_CONTENT VARCHAR2(2000) NOT NULL,
	DECLARE_TYPE VARCHAR2(20) NOT NULL,
	DECLARE_CHECK NUMBER DEFAULT 1 NOT NULL,
	DECLARE_DATE DATE DEFAULT SYSDATE NOT NULL,
	DECLARE_REASON VARCHAR2(2000) NOT NULL,
	DECLARE_CHECK_DATE DATE DEFAULT SYSDATE NOT NULL,
    FREE_BOARD_NO NUMBER NOT NULL,
    SHARE_BOARD_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    FOREIGN KEY (FREE_BOARD_NO) REFERENCES FREE_BOARD(FREE_BOARD_NO),
	FOREIGN KEY (SHARE_BOARD_NO) REFERENCES SHARE_BOARD(SHARE_BOARD_NO),
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO)
);
 
    

COMMENT ON COLUMN DECLARATION.DECLARE_CHECK IS '신고상태';
COMMENT ON COLUMN DECLARATION.DECLARE_REASON IS '사유';



--------------------------------------------------
--------------    거래     ------------------	
--------------------------------------------------
CREATE TABLE TRADE(
    TRADE_NO NUMBER PRIMARY KEY,
    TRADE_DATE DATE,
    TRADE_SCORE NUMBER,
    REVIEW_CONTENT VARCHAR2(2000),
    REVIEW_DATE DATE DEFAULT SYSDATE,
    USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO),
    PRODUCT_NO NUMBER NOT NULL,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT(PRODUCT_NO)
    );
COMMENT ON COLUMN TRADE.TRADE_NO IS '거래번호';
COMMENT ON COLUMN TRADE.TRADE_DATE IS '거래일';
COMMENT ON COLUMN TRADE.TRADE_SCORE IS '평점';
COMMENT ON COLUMN TRADE.REVIEW_CONTENT IS '후기내용';
COMMENT ON COLUMN TRADE.REVIEW_DATE IS '후기등록일';


