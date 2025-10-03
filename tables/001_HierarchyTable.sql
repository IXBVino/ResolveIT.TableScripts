CREATE TABLE public."Hierarchy" (
  "HierarchyId"     UUID        PRIMARY KEY,
  "ParentId"        UUID        NULL,
  "HierarchyLevel"  INTEGER     NOT NULL,
  "TenantId"        UUID        NULL,
  "IsActive"        BOOLEAN     NOT NULL DEFAULT TRUE,
  "CreatedBy"       UUID        NULL,
  "CreatedOn"       TIMESTAMPTZ NULL DEFAULT NOW(),
  "LastUpdatedBy"   UUID        NULL,
  "LastUpdatedOn"   TIMESTAMPTZ NULL
);
