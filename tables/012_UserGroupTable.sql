CREATE TABLE public."UserGroup" (
  "GroupId"     UUID         PRIMARY KEY,
  "GroupName"   VARCHAR(256) NOT NULL,
  "RoleId"      UUID         NOT NULL,
  "HierarchyId" UUID         NOT NULL
);
