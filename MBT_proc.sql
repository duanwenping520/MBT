----------------------------------------------
-- Export file for user MBT                 --
-- Created by duanwp on 2017/1/12, 17:00:47 --
----------------------------------------------

set define off
spool MBT_proc.log

prompt
prompt Creating procedure MBT_CONTRACT_AMOUNT_INFO_PROC
prompt ================================================
prompt
create or replace procedure mbt.MBT_CONTRACT_AMOUNT_INFO_PROC(   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_015(LOAN_CONTRACT_NO,CURRENCY,AMOUNT,BALANCE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC2.CBCCID,
     LC2.CBCYCD,
     LC2.CBAMOU,
     LC2.CBAAMU,
     LC2.CBBKCD,
     '', --分行号
     'CDT',
     LC2.CBIOTP
     FROM LS_CLP2 LC2;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_CONTRACT_AMOUNT_INFO_PROC;
/

prompt
prompt Creating procedure MBT_CONTRACT_INFO_PROC
prompt =========================================
prompt
create or replace procedure mbt.MBT_CONTRACT_INFO_PROC(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_016(LOAN_CARD_NO,LOAN_CONTRACT_NO,BUSI_DATE,BORROWER_NAME,CREDIT_AGREEMENT_NO,START_DATE,EXPIRY_DATE,BANK_GROUP_FLAG,GUARANTEE_FLAG,
     CONTRACT_EFFECTIVE_STATE,CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     lc1.CACCID,
     lc1.CAACID,
     LC1.CACPDT,
     LC1.CANAME,
     LC1.CAOPTN1,
     LC1.CAAVDT,
     LC1.CAEDDT,
     LC1.CAGPIN,
     LC1.CAGTIN,
     LC1.CASTUS,
     '', --客户号
     LC1.CABKCD,
     '', --分行号
     'CDT',
     LC1.CAIOTP
     FROM LS_CLP1 lc1;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_CONTRACT_INFO_PROC;
/

prompt
prompt Creating procedure MBT_GUAR_CONTRACT_INFO_PROC
prompt ==============================================
prompt
create or replace procedure mbt.MBT_GUAR_CONTRACT_INFO_PROC(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_026(LOAN_CARD_NO,MAJOR_CONTRACT_NO,BUSI_TYPE,BUSI_DATE,GUARANTEE_CONTRACT_NO,GUARANTEE_NAME,GUARANTEE_LOAN_CARD_NO,CURRENCY,
     GUARANTEE_AMOUNT,CONTRACT_SIGN_DATE,GUARANTEE_TYPE,CONTRACT_EFFECTIVE_STATE,CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC1.CHCCID,
     LC1.CHMCID,
     LC1.CHCRPTY,
     LC1.CHCPDT,
     LC1.CHPCID,
     LC1.CHNAME,
     LC1.CHCCID2,
     LC1.CHCYCD,
     LC1.CHAMOU,
     LC1.CHSTDT,
     LC1.CHPLTY,
     LC1.CHSTUS,
     '', --客户号
     LC1.CHBKCD,
     '', --分行号
     'CDT',
     LC1.CHIOTP
     FROM LS_CEP1 LC1;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_GUAR_CONTRACT_INFO_PROC;
/

prompt
prompt Creating procedure MBT_LOAN_EXTENSION_INFO_PROC
prompt ===============================================
prompt
create or replace procedure mbt.MBT_LOAN_EXTENSION_INFO_PROC(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_028(LOAN_CARD_NO,LOAN_CONTRACT_NO,BUSI_DATE,RECIEPT_NO,EXTENSION_COUNT,AMOUNT,START_DATE,EXPIRY_DATE,
     CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC5.CECCID,
     LC5.CEACID,
     LC5.CECPDT,
     LC5.CERPID,
     LC5.CEEXNO,
     LC5.CEEXAM,
     LC5.CESTDT,
     LC5.CEEDDT,
     '', --客户号
     LC5.CEBKCD,
     '', --分行号
     'CDT',
     LC5.CEIOTP
     FROM LS_CLP5 LC5;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
end MBT_LOAN_EXTENSION_INFO_PROC;
/

prompt
prompt Creating procedure MBT_LOAN_RECEIPT_INFO_PROC
prompt =============================================
prompt
create or replace procedure mbt.MBT_LOAN_RECEIPT_INFO_PROC(   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_029(LOAN_CARD_NO,LOAN_CONTRACT_NO,BUSI_DATE,RECIEPT_NO,CURRENCY,RECIEPT_AMOUNT,RECIEPT_BALANCE,START_DATE,EXPIRY_DATE,LOAN_BUSI_TYPE,
     LOAN_FORM,LOAN_PROPERTY,LOAN_ORIENTATION,LOAN_TYPE,EXTENSION_FLAG,FOUR_STAGE_CLASSIFICATION,FIVE_STAGE_CLASSIFICATION,CUSTOMER_CODE,BRANCH_ID,
     BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC3.CCCCID,
     LC3.CCACID,
     LC3.CCCPDT,
     LC3.CCRPID,
     LC3.CCCYCD,
     LC3.CCLMT,
     LC3.CCBLA,
     LC3.CCDRDT,
     LC3.CCDUDT,
     LC3.CCPDTP,
     LC3.CCTYPE,
     '2', --默认为2
     '' , --Hub待确认
     LC3.CCTYPE2,
     LC3.CCEXID,
     LC3.CCOPTN1,
     LC3.CC5LVL,
     '', --客户号
     LC3.CCBKCD,
     '', --分行号
     'CDT',
     LC3.CCIOTP
     FROM LS_CLP3 LC3;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
end MBT_LOAN_RECEIPT_INFO_PROC;
/

prompt
prompt Creating procedure MBT_LOAN_REPAYMENT_PROC
prompt ==========================================
prompt
create or replace procedure mbt.MBT_LOAN_REPAYMENT_PROC(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_030(LOAN_CARD_NO,LOAN_CONTRACT_NO,BUSI_DATE,RECIEPT_NO,REPAYMENT_DATE,REPAYMENT_COUNT,REPAYMENT_TYPE,REPAYMENT_AMOUNT,
     CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC4.CDCCID,
     LC4.CDACID,
     LC4.CDCPDT,
     LC4.CDRPID,
     LC4.CDRTDT,
     LC4.CDRPNO,
     LC4.CDRPWY,
     LC4.CDRPAM,
     '', --客户号
     LC4.CDBKCD,
     '', --分行号
     'CDT',
     LC4.CDIOTP
     FROM LS_CLP4 LC4;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
end MBT_LOAN_REPAYMENT_PROC;
/

prompt
prompt Creating procedure MBT_MORTGAGE_CONTRACT_INFO
prompt =============================================
prompt
create or replace procedure mbt.MBT_MORTGAGE_CONTRACT_INFO(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_032(LOAN_CARD_NO,MAJOR_CONTRACT_NO,BUSI_TYPE,BUSI_DATE,MORTGAGE_CONTRACT_NO,MORTGAGE_NO,MORTGAGER_NAME,MORTGAGER_LOAN_CARD_NO,CURRENCY,
     MORTGAGE_ASSESS_VALUE,ASSESS_DATE,ASSESS_ORG_NAME,ASSESS_ORG_CODE,CONTRACT_SIGN_DATE,MORTGAGE_TYPE,MORTGAGE_CURRENCY,MORTGAGE_AMOUNT,ISSUE_ORG_NAME,ISSUE_DATE,
     MORTGAGE_INSTRUCTION,CONTRACT_EFFECTIVE_STATE,CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC2.CICCID,
     LC2.CIMCID,
     LC2.CICRPTY,
     LC2.CICPDT,
     LC2.CIMGID,
     LC2.CIMGSN,
     LC2.CINAME,
     LC2.CICCID2,
     LC2.CIOPTN1,
     LC2.CIOPTN2,
     LC2.CIOPTN3,
     LC2.CIOPTN4,
     LC2.CIOPTN5,
     LC2.CISTDT,
     LC2.CIMGTY,
     LC2.CICYCD,
     LC2.CIAMOU,
     LC2.CIGOVN,
     LC2.CISTDT2,
     LC2.CIDETL,
     LC2.CISTUS,
     '', --客户号
     LC2.CIBKCD,
     '', --分行号
     'CDT',
     LC2.CIIOTP
     FROM LS_CEP2 LC2;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_MORTGAGE_CONTRACT_INFO;
/

prompt
prompt Creating procedure MBT_PLEDGE_CONTRACT_INFO
prompt ===========================================
prompt
create or replace procedure mbt.MBT_PLEDGE_CONTRACT_INFO(
i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_044(LOAN_CARD_NO,MAJOR_CONTRACT_NO,BUSI_TYPE,BUSI_DATE,PLEDGE_CONTRACT_NO,PLEDGE_NO,PLEDGER_NAME,PLEDGER_LOAN_CARD_NO,CURRENCY,
     PLEDGE_VALUE,CONTRACT_SIGN_DATE,PLEDGE_TYPE,PLEDGE_CURRENCY,PLEDGE_AMOUNT,CONTRACT_EFFECTIVE_STATE,
     CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC3.CJCCID,
     LC3.CJMCID,
     LC3.CJCRPTY,
     LC3.CJCPDT,
     LC3.CJPGID,
     LC3.CJPGSN,
     LC3.CJNAME,
     LC3.CJCCID2,
     LC3.CJCYCD,
     LC3.CJVALU,
     LC3.CJSTDT,
     LC3.CJPGTY,
     LC3.CJCYCD2,
     LC3.CJAMOU,
     LC3.CJSTUS,
     '', --客户号
     LC3.CJBKCD,
     '', --分行号
     'CDT',
     LC3.CJIOTP
     FROM LS_CEP3 LC3;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_PLEDGE_CONTRACT_INFO;
/

prompt
prompt Creating procedure MBT_PUBLIC_CREDIT_INFO_PROC
prompt ==============================================
prompt
create or replace procedure mbt.MBT_PUBLIC_CREDIT_INFO_PROC(
   i_rtm_id in varchar2,
   o_error_code OUT VARCHAR2, -- 错误代码
   o_error_msg OUT VARCHAR2 -- 错误消息
) is

begin
  
     INSERT INTO CCI_IMP_048(CREDIT_AGREEMENT_NO,BUSI_DATE,BORROWER_NAME,LOAN_CARD_NO,CURRENCY,LOAN_CREDIT,START_DATE,EXPIRY_DATE,LOAN_CREDIT_START_DATE,
     LOAN_CREDIT_CANCEL_REASON,CUSTOMER_CODE,BRANCH_ID,BRANCH_NO,DEPT_ID,MSG_RECORD_OPERATE_TYPE)
     
     SELECT 
     LC.CGCGID,
     LC.CGCPDT,
     LC.CGNAME,
     LC.CGCCID,
     LC.CGCYCD,
     LC.CGAMOU,
     LC.CGSTDT,
     LC.CGDUDT,
     LC.CGMTDT,
     LC.CGRESN,
     '', --客户号
     LC.CGBKCD,
     '', --分行号
     'CDT',
     LC.CGIOTP
     FROM LS_CSP LC;
     
     COMMIT;
  
     o_error_code := '000000';
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     --error msg
     o_error_code := SQLCODE;
     o_error_msg := SQLERRM;
  
end MBT_PUBLIC_CREDIT_INFO_PROC;
/


spool off
