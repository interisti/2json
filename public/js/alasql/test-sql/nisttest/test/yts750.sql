-- MODULE  YTS750  

-- SQL Test Suite, V6.0, Interactive SQL, yts750.sql
-- 59-byte ID
-- TEd Version #

-- AUTHORIZATION CTS1              

   SELECT USER FROM HU.ECCO;
-- RERUN if USER value does not match preceding AUTHORIZATION comment
   ROLLBACK WORK;

-- date_time print

-- TEST:7500 CREATE DOMAIN - SQL Procedure statement, no options!

   CREATE DOMAIN intdomain INTEGER;
-- PASS:7500 If domain created successfully?

   COMMIT WORK;

   SELECT DOMAIN_CATALOG,
         DATA_TYPE, CHARACTER_MAXIMUM_LENGTH,
         CHARACTER_OCTET_LENGTH, COLLATION_CATALOG,
         COLLATION_SCHEMA, COLLATION_NAME,
         CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA,
         CHARACTER_SET_NAME, NUMERIC_PRECISION,
         NUMERIC_PRECISION_RADIX, NUMERIC_SCALE,
         DATETIME_PRECISION, DOMAIN_DEFAULT,
         INTERVAL_TYPE, INTERVAL_PRECISION
         FROM INFORMATION_SCHEMA.DOMAINS
         WHERE DOMAIN_NAME = 'INTDOMAIN'
         AND DOMAIN_SCHEMA = 'CTS1';
-- PASS:7500 If DOMAIN_CATALOG = not NULL?
-- PASS:7500 If DATA_TYPE = INTEGER?
-- PASS:7500 If CHARACTER_MAXIMUM_LENGTH = NULL?
-- PASS:7500 If CHARACTER_OCTET_LENGTH = NULL?
-- PASS:7500 If COLLATION_CATALOG = NULL?
-- PASS:7500 If COLLATION_SCHEMA = NULL?
-- PASS:7500 If COLLATION_NAME = NULL?
-- PASS:7500 If CHARACTER_SET_CATALOG = NULL?
-- PASS:7500 If CHARACTER_SET_SCHEMA = NULL?
-- PASS:7500 If CHARACTER_SET_NAME = NULL?
-- PASS:7500 If NUMERIC_PRECISION = not NULL?
-- PASS:7500 If NUMERIC_PRECISION_RADIX = 2 or 10?
-- PASS:7500 If NUMERIC_SCALE = 0?
-- PASS:7500 If DATETIME_PRECISION = NULL?
-- PASS:7500 If DOMAIN_DEFAULT = NULL?
-- PASS:7500 If INTERVAL_TYPE = NULL?
-- PASS:7500 If INTERVAL_PRECISION = NULL?

   ROLLBACK WORK;

   DROP DOMAIN intdomain CASCADE;
-- PASS:7500 If domain dropped successfully?

   COMMIT WORK;

-- END TEST >>> 7500 <<< END TEST
-- *********************************************
-- *************************************************////END-OF-MODULE
