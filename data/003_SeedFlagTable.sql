INSERT INTO public."Flags" (
  "FlagId",
  "TenantId",
  "Name",
  "IsActive",
  "CreatedBy",
  "CreatedOn",
  "LastUpdatedBy",
  "LastUpdatedOn",
  "Duplicate",
  "Closed"
)
VALUES
  (gen_random_uuid(), NULL, 'Accountability',       TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'RCM',                  TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'CAP',                  TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Enacted Legislation',  TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Test Files',           TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Audit',                TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Proposed Legislation', TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE);
