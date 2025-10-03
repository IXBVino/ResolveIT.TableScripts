-- Admin (TenantId = all-zero GUID sentinel)
INSERT INTO public."user"
(
    "UserId",
    "UserName",
    "FirstName",
    "LastName",
    "StartDate",
    "EndDate",
    "Email",
    "PhonePrimary",
    "PhoneSecondary",
    "Role",
    "UserGroup",
    "LandingPage",
    "IsExternal",
    "DFAEnabled",
    "PreferredAuthentication",
    "IsVerified",
    "FailedLogonAttempts",
    "IsAdmin",
    "PictureID",
    "SignatureID",
    "NickName",
    "DefaultParticipant",
    "IsActive",
    "TenantId",
    "PasswordHash",
    "CreatedBy",
    "CreatedOn",
    "LastUpdatedBy",
    "LastUpdatedOn"
)
VALUES
(
    gen_random_uuid(),                      -- UserId
    'admin',                                -- UserName
    'System',                               -- FirstName
    'Administrator',                        -- LastName
    now(),                                  -- StartDate (UTC)
    now() + interval '50 years',            -- EndDate far future
    'admin@example.com',                    -- Email
    '555-0000',                             -- PhonePrimary
    '555-0001',                             -- PhoneSecondary
    'Admin',                                -- Role
    'Administrators',                       -- UserGroup
    '/home',                                -- LandingPage
    false,                                  -- IsExternal
    false,                                  -- DFAEnabled
    'Password',                             -- PreferredAuthentication
    true,                                   -- IsVerified
    0,                                      -- FailedLogonAttempts
    true,                                   -- IsAdmin
    gen_random_uuid(),                      -- PictureID
    gen_random_uuid(),                      -- SignatureID
    'admin',                                -- NickName
    'default',                              -- DefaultParticipant
    true,                                   -- IsActive
    '00000000-0000-0000-0000-000000000000', -- TenantId (global/sentinel)
    'AQAAAAIAAYagAAAAEJ8HMyUHDgOaDtt/Gl6jF5obXHDu0Ez8ABvYjYwY2F8X2g9y0KJt1sphZC9dE45aNQ==', -- PasswordHash
    '00000000-0000-0000-0000-000000000001', -- CreatedBy (system)
    now(),                                  -- CreatedOn
    '00000000-0000-0000-0000-000000000001', -- LastUpdatedBy
    now()                                   -- LastUpdatedOn
);

-- Global admin (TenantId = NULL)
INSERT INTO public."user"
(
    "UserId",
    "UserName",
    "FirstName",
    "LastName",
    "StartDate",
    "EndDate",
    "Email",
    "PhonePrimary",
    "PhoneSecondary",
    "Role",
    "UserGroup",
    "LandingPage",
    "IsExternal",
    "DFAEnabled",
    "PreferredAuthentication",
    "IsVerified",
    "FailedLogonAttempts",
    "IsAdmin",
    "PictureID",
    "SignatureID",
    "NickName",
    "DefaultParticipant",
    "IsActive",
    "TenantId",
    "PasswordHash",
    "CreatedBy",
    "CreatedOn",
    "LastUpdatedBy",
    "LastUpdatedOn"
)
VALUES
(
    gen_random_uuid(),
    'global-admin',
    'System',
    'Administrator',
    now(),
    now() + interval '50 years',
    'global.admin@example.com',
    '555-0000',
    '555-0001',
    'Admin',
    'Administrators',
    '/home',
    false,
    false,
    'Password',
    true,
    0,
    true,
    gen_random_uuid(),
    gen_random_uuid(),
    'global-admin',
    'default',
    true,
    NULL,  -- TenantId NULL == global
    'AQAAAAIAAYagAAAAEJ8HMyUHDgOaDtt/Gl6jF5obXHDu0Ez8ABvYjYwY2F8X2g9y0KJt1sphZC9dE45aNQ==',
    '00000000-0000-0000-0000-000000000001',
    now(),
    '00000000-0000-0000-0000-000000000001',
    now()
);

-- Tenant admin (TenantId = some non-null UUID)
INSERT INTO public."user"
(
    "UserId",
    "UserName",
    "FirstName",
    "LastName",
    "StartDate",
    "EndDate",
    "Email",
    "PhonePrimary",
    "PhoneSecondary",
    "Role",
    "UserGroup",
    "LandingPage",
    "IsExternal",
    "DFAEnabled",
    "PreferredAuthentication",
    "IsVerified",
    "FailedLogonAttempts",
    "IsAdmin",
    "PictureID",
    "SignatureID",
    "NickName",
    "DefaultParticipant",
    "IsActive",
    "TenantId",
    "PasswordHash",
    "CreatedBy",
    "CreatedOn",
    "LastUpdatedBy",
    "LastUpdatedOn"
)
VALUES
(
    gen_random_uuid(),
    'tenant-admin',
    'Tenant',
    'Administrator',
    now(),
    now() + interval '50 years',
    'tenant.admin@example.com',
    '555-0100',
    '555-0101',
    'Admin',
    'Administrators',
    '/home',
    false,
    false,
    'Password',
    true,
    0,
    true,
    gen_random_uuid(),
    gen_random_uuid(),
    'tenant-admin',
    'default',
    true,
    gen_random_uuid(),  -- a new TenantId (non-null)
    'AQAAAAIAAYagAAAAEJ8HMyUHDgOaDtt/Gl6jF5obXHDu0Ez8ABvYjYwY2F8X2g9y0KJt1sphZC9dE45aNQ==',
    '00000000-0000-0000-0000-000000000001',
    now(),
    '00000000-0000-0000-0000-000000000001',
    now()
);
