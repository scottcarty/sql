CREATE MULTISET GLOBAL TEMPORARY TABLE ADLSTE_WestComm.consumption_io_forecast_stg ,FALLBACK ,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO,
     LOG
     (
      SiteID VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Report Date" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Log Date" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Peak Start" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Peak End" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Avg I/O Pct" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      "Moving Avg" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      Trend VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      ReserveX BIGINT,
      "Reserve Horizon" VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SlopeX VARCHAR(1024) CHARACTER SET UNICODE NOT CASESPECIFIC)
PRIMARY INDEX ( SiteID ,"Report Date" ,"Log Date" )
ON COMMIT PRESERVE ROWS;
