CREATE TABLE public."Tenants" (
  "TenantId"       UUID         PRIMARY KEY,
  "TenantName"     VARCHAR(255) NOT NULL,
  "Domain"         VARCHAR(255) NULL,
  "IsActive"       BOOLEAN      NOT NULL DEFAULT TRUE,
  "CreatedBy"      UUID         NULL,
  "CreatedOn"      TIMESTAMPTZ  NULL DEFAULT NOW(),
  "LastUpdatedBy"  UUID         NULL,
  "LastUpdatedOn"  TIMESTAMPTZ  NULL
);
