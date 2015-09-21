CREATE TABLE TMDS_JOURNAL
  (
    PERSISTENCE_ID  VARCHAR2(255) NOT NULL,
    SEQUENCE_NUMBER NUMBER NOT NULL,
    MARKER          VARCHAR2(255) NOT NULL,
    MESSAGE CLOB NOT NULL,
    CREATED TIMESTAMP NOT NULL,
    PRIMARY KEY(PERSISTENCE_ID, SEQUENCE_NUMBER)
  );

CREATE TABLE TMDS_SNAPSHOT
  (
    PERSISTENCE_ID VARCHAR2(255) NOT NULL,
    SEQUENCE_NR    NUMBER NOT NULL,
    SNAPSHOT CLOB NOT NULL,
    CREATED NUMBER NOT NULL,
    PRIMARY KEY (PERSISTENCE_ID, SEQUENCE_NR)
  );