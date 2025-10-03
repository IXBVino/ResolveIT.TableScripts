-- Drop if it already exists
DROP TABLE IF EXISTS public."user";

CREATE TABLE public."user" (
  "UserId"                  uuid            NOT NULL,
  "UserName"                varchar(256)    NOT NULL,
  "FirstName"               varchar(256)    NOT NULL,
  "LastName"                varchar(256)    NOT NULL,
  "StartDate"               timestamptz     NOT NULL,
  "EndDate"                 timestamptz     NOT NULL,
  "Email"                   varchar(320)    NOT NULL,
  "PhonePrimary"            varchar(32)     NOT NULL,
  "PhoneSecondary"          varchar(32)     NOT NULL,
  "Role"                    varchar(128)    NOT NULL,
  "UserGroup"               varchar(128)    NOT NULL,
  "LandingPage"             varchar(256)    NOT NULL,
  "IsExternal"              boolean         NOT NULL,
  "DFAEnabled"              boolean         NOT NULL,
  "PreferredAuthentication" varchar(64)     NOT NULL,
  "IsVerified"              boolean         NOT NULL,
  "FailedLogonAttempts"     integer         NOT NULL,
  "IsAdmin"                 boolean         NOT NULL,
  "PictureID"               uuid            NOT NULL,
  "SignatureID"             uuid            NOT NULL,
  "NickName"                varchar(128)    NOT NULL,
  "DefaultParticipant"      varchar(256)    NOT NULL,
  "IsUnlocked"		    boolean	    NOT NULL,
  "IsActive"                boolean         NOT NULL,
  "TenantId"                uuid            NULL,
  "CreatedBy"               uuid            NOT NULL,
  "CreatedOn"               timestamptz     NOT NULL,
  "LastUpdatedBy"           uuid            NOT NULL,
  "LastUpdatedOn"           timestamptz     NOT NULL,

  -- Identity vars
  "PasswordHash"            varchar(512)    NULL,

  CONSTRAINT "PK_User" PRIMARY KEY ("UserId")
);


