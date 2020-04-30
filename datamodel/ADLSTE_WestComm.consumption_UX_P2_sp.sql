REPLACE PROCEDURE adlste_westcomm.
consumption_UX_P2_sp ()
BEGIN
 --call sp_audit_Account_Name ('adlste_coa.stg_dat_dbcinfo', 'sp_dat_dbcinfo', '{}');
 --call sp_audit_Site_ID ('adlste_coa.stg_dat_dbcinfo', 'sp_dat_dbcinfo', '{}');

 delete from adlste_westcomm.consumption_UX_P2_v1
 where   (SiteID, xLogDate) in
  (Select SiteID, xLogDate From adlste_westcomm.consumption_UX_P2_stg);

 Insert into adlste_westcomm.consumption_UX_P2_v1
 Select * From adlste_westcomm.consumption_UX_P2_stg;
END;
