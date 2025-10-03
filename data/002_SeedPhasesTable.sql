INSERT INTO public."Phases" (
  "PhaseId",
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
  (gen_random_uuid(), NULL, 'Identification',     TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Research',           TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Impact Reporting',   TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Correction',         TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE),
  (gen_random_uuid(), NULL, 'Executive Summary',  TRUE, NULL, NOW(), NULL, NULL, FALSE, FALSE);