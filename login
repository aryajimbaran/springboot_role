;              
CREATE USER IF NOT EXISTS SA SALT 'f8b870325a56ce0b' HASH '455bc58efed8a31f9b7c15144827f79c8d53c0dd65204c9442e7ea4b71881d60' ADMIN;            
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_83DF0841_ADC3_44A2_8C90_90CCFE4BA59D START WITH 9 BELONGS_TO_TABLE;     
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CEA35D56_A0E2_4E7C_990E_EBBF962CBE7E START WITH 4 BELONGS_TO_TABLE;     
CREATE CACHED TABLE PUBLIC.SAMPLE(
    ID BIGINT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_CEA35D56_A0E2_4E7C_990E_EBBF962CBE7E) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CEA35D56_A0E2_4E7C_990E_EBBF962CBE7E,
    DATE_CREATED TIMESTAMP,
    DATE_MODIFIED TIMESTAMP,
    NAME VARCHAR(255)
);         
ALTER TABLE PUBLIC.SAMPLE ADD CONSTRAINT PUBLIC.CONSTRAINT_9 PRIMARY KEY(ID);  
-- 3 +/- SELECT COUNT(*) FROM PUBLIC.SAMPLE;   
INSERT INTO PUBLIC.SAMPLE(ID, DATE_CREATED, DATE_MODIFIED, NAME) VALUES
(1, TIMESTAMP '2017-12-07 23:24:28.907', TIMESTAMP '2017-12-07 23:24:28.926', 'test'),
(2, TIMESTAMP '2017-12-08 00:56:49.038', TIMESTAMP '2017-12-08 00:56:49.052', 'test'),
(3, TIMESTAMP '2017-12-11 10:50:43.669', TIMESTAMP '2017-12-11 10:50:43.669', 'test');   
CREATE CACHED TABLE PUBLIC.USER(
    ID BIGINT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_83DF0841_ADC3_44A2_8C90_90CCFE4BA59D) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_83DF0841_ADC3_44A2_8C90_90CCFE4BA59D,
    ADDRESS VARCHAR(255),
    COMPANY_NAME VARCHAR(255),
    EMAIL VARCHAR(255) NOT NULL,
    FIRST_NAME VARCHAR(255),
    LAST_LOGIN VARCHAR(255),
    LAST_NAME VARCHAR(255),
    PASSWORD VARCHAR(100) NOT NULL,
    PROFILE_PICTURE VARCHAR(255),
    ROLE VARCHAR(255),
    TOKEN VARCHAR(255),
    USER_NAME VARCHAR(100) NOT NULL
); 
ALTER TABLE PUBLIC.USER ADD CONSTRAINT PUBLIC.CONSTRAINT_2 PRIMARY KEY(ID);    
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.USER;     
INSERT INTO PUBLIC.USER(ID, ADDRESS, COMPANY_NAME, EMAIL, FIRST_NAME, LAST_LOGIN, LAST_NAME, PASSWORD, PROFILE_PICTURE, ROLE, TOKEN, USER_NAME) VALUES
(2, 'jakarta ', 'no have a company', 'henrygunawann@gmail.com', 'henry', '2017-12-11 15:49:52.184', 'gunawan', '$2a$10$xDiR6/kL1gEaW0BhVFJdburybeA6XgoNibII4xW2h20V6r//aupDC', '2017-12-07_16_46_10_thumbnail.jpg', 'ROLE_USER', 'd6882081d13dc7e24d65469c61547314', 'jenkins'),
(3, 'jakarta', 'test', 'henry@henry.com', 'henry', '2017-12-11 10:53:24.31', 'gunawan', '$2a$10$pt6HYyfENzzsNOg7EaGfte50Rd7FAfX4wf7.94ncaUv3IDJoAbiPW', NULL, 'ROLE_USER', '8a625d3be28f69d867fdf6755ab7e708', 'admin'),
(5, NULL, NULL, 'henrygunawan@outlook.com', NULL, '2018-01-10 16:31:11.096', NULL, '$2a$10$QGZSB0ueiW3.DktJ13XSK.etVeTM9A2vataN/SxgBX9rTXLHSbCyy', NULL, 'ROLE_USER', '2b25a428cce2302bb6201f4c0ac9a338', 'henry'),
(6, NULL, NULL, 'test@test.com', NULL, '2018-01-10 16:30:45.801', NULL, '$2a$10$X3DNbQNW64Sw/m68X69C9.bmHNQ66q9spGs/frOCnJkZX8WvPZBd.', NULL, 'ROLE_ADMIN', 'fc1f7d8d74fa90ad036d2be3935cbaa0', 'jilong'),
(8, NULL, NULL, 'strong@strong.com', NULL, NULL, NULL, '$2a$10$0qK5s8Fo3yksd1xLHBMp9eqWHjoT1Rpgn4QcU.s7VkwDy9nxVFQ/K', NULL, 'ROLE_USER', '09c11a14ebbe40cc24688afc1a273470', 'strong');       