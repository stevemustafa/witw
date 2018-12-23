/*CREATE the Schema*/
CREATE SCHEMA IF NOT EXISTS urls;
CREATE SCHEMA IF NOT EXISTS stats;
/* NOTES on Schema:

  urls:   This actually houses the tables that actually contain the data, both the long form and the short form of the
          urls provided for the shortener along with the timestamp
 */



/* Payloads table and constraints */


/*  table definition
    1- The long form of the url (the actual url provided (tested for validity on the front end
    2- short form the generated short code for the URL - set at 10 characters and if the code is shorter the DB will
    auto right pad with spaces
    3- doc == date of creation, a timezone timestamp on when the entry was created
    4- userID with a default of "-1" which simply means anonymous user
 */
CREATE TABLE IF NOT EXISTS urls.payload (
  longform varchar(250) NOT NULL ,
  shortform char(10) PRIMARY KEY NOT NULL ,
  doc timestamp with time zone NOT NULL DEFAULT NOW(),
  userID int DEFAULT -1,
    UNIQUE (shortform)
);

