CREATE TABLE public."Status" (
  "StatusId"      UUID         PRIMARY KEY,
  "TenantId"      UUID         NULL,
  "Name"          VARCHAR(200) NOT NULL,
  "IsActive"      BOOLEAN      NOT NULL DEFAULT TRUE,
  "CreatedBy"     UUID         NULL,
  "CreatedOn"     TIMESTAMPTZ  NULL DEFAULT NOW(),
  "LastUpdatedBy" UUID         NULL,
  "LastUpdatedOn" TIMESTAMPTZ  NULL,
  "Duplicate"     BOOLEAN      NOT NULL DEFAULT FALSE,
  "Closed"        BOOLEAN      NOT NULL DEFAULT FALSE
);
