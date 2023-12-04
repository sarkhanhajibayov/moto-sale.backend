﻿CREATE TRIGGER STADIUM_TG
BEFORE
INSERT ON "stadium"
FOR EACH ROW EXECUTE PROCEDURE STADIUM_TG_FUNC();

CREATE TRIGGER TIME_TYPE_TG
BEFORE
INSERT ON "time_type"
FOR EACH ROW EXECUTE PROCEDURE TIME_TYPE_TG_FUNC();

CREATE TRIGGER COMPANY_TG
BEFORE
INSERT ON "company"
FOR EACH ROW EXECUTE PROCEDURE COMPANY_TG_FUNC();

CREATE TRIGGER COMPANY_BRANCH_TG
BEFORE
INSERT ON "company_branch"
FOR EACH ROW EXECUTE PROCEDURE COMPANY_BRANCH_TG_FUNC();

CREATE TRIGGER STADIUM_FULLIED_TG
BEFORE
INSERT ON "stadium_fullied"
FOR EACH ROW EXECUTE PROCEDURE STADIUM_FULLIED_TG_FUNC();

CREATE TRIGGER STADIUM_PRICE_TG
BEFORE
INSERT ON "stadium_price"
FOR EACH ROW EXECUTE PROCEDURE STADIUM_PRICE_TG_FUNC();

CREATE TRIGGER STADIUM_TYPE_TG
BEFORE
INSERT ON "stadium_type"
FOR EACH ROW EXECUTE PROCEDURE STADIUM_TYPE_TG_FUNC();

CREATE TRIGGER STATIC_DATA_TG
BEFORE
INSERT ON "static_data"
FOR EACH ROW EXECUTE PROCEDURE STATIC_DATA_TG_FUNC();

CREATE TRIGGER RESERVE_TG
BEFORE
INSERT ON "reserve"
FOR EACH ROW EXECUTE PROCEDURE RESERVE_TG_FUNC();

CREATE TRIGGER CLIENT_TG
BEFORE
INSERT ON "client"
FOR EACH ROW EXECUTE PROCEDURE CLIENT_TG_FUNC();

CREATE TRIGGER COMPANY_EMPLOYEE_TG
BEFORE
INSERT ON "company_employee"
FOR EACH ROW EXECUTE PROCEDURE COMPANY_EMPLOYEE_TG_FUNC();