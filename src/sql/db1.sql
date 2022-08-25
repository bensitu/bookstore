CREATE TABLE practice_table
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(100),
    price   INTEGER,
    author  VARCHAR(100),
    comment TEXT
);

INSERT INTO practice_table
VALUES ('00001', 'Javaの本', 1500, 'ボブ', '簡単なJavaのテキストです');
INSERT INTO practice_table
VALUES ('00002', 'サープレットの本', 2000, 'ジョン', '簡単なサープレットのテキストです');
INSERT INTO practice_table
VALUES ('00003' , 'JSPの本', 1000, 'ジョン', '簡単なJSPのテキストです');

