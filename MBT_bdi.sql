--------------------------------------------
-- Export file for user MBT               --
-- Created by 161 on 2017/12/18, 14:55:39 --
--------------------------------------------

set define off
spool MBT_bdi.log

prompt
prompt Creating view CCI_BUSI_GUARANTEE_VIEW
prompt =====================================
prompt
create or replace force view mbt.cci_busi_guarantee_view as
select a.contract_no, a.sys_ctl_id, a.busi_type, a.tablename, count(a.id2) as count
  from (select *
          from (
                --反馈成功的业务表 ts
                select t.*
                  from (
                         --信贷业务总表 t
                         select t1.loan_contract_no as contract_no,
                                 t1.guarantee_flag,
                                 t1.sys_ctl_id,
                                 'CCI_CONTRACT_INFO' as tableName
                           from CCI_CONTRACT_INFO t1
                         union all
                         select t2.FACTORING_AGREEMENT_NO as contract_no,
                                 t2.guarantee_flag,
                                 t2.sys_ctl_id,
                                 'CCI_FACTORING_BUSI' as tableName
                           from CCI_FACTORING_BUSI t2
                         union all
                         select t4.FINANCING_AGREEMENT_NO as contract_no,
                                 t4.guarantee_flag,
                                 t4.sys_ctl_id,
                                 'CCI_FINANCE_AGREEMENT_INFO' as tableName
                           from CCI_FINANCE_AGREEMENT_INFO t4
                         union all
                         select t5.LETTER_OF_CREDIT_NO as contract_no,
                                 t5.guarantee_flag,
                                 t5.sys_ctl_id,
                                 'CCI_CREDIT_LETTER_INFO' as tableName
                           from CCI_CREDIT_LETTER_INFO t5
                         union all
                         select t6.INDEMNITY_CODE as contract_no,
                                 t6.guarantee_flag,
                                 t6.sys_ctl_id,
                                 'CCI_INDEMNITY_BUSI' as tableName
                           from CCI_INDEMNITY_BUSI t6
                         union all
                         select t7.ACCEPTANCE_AGREEMENT_NO as contract_no,
                                 t7.guarantee_flag,
                                 t7.sys_ctl_id,
                                 'CCI_BANK_ACCEPT_BUSI_INFO' as tableName
                           from CCI_BANK_ACCEPT_BUSI_INFO t7) t --信贷业务总表 t
                  left join cci_report_system_ctl s
                    on s.sys_ctl_id = t.sys_ctl_id
                 where s.feedback_flag = '1'
                   and t.guarantee_flag = '1') ts --反馈成功的业务表 ts
         inner join (
                    --反馈成功的保证表 gs
                    select g.*
                      from (
                             --保证总表 g
                             select g1.major_contract_no,
                                     g1.busi_type,
                                     g1.GUARANTEE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g1.CONTRACT_EFFECTIVE_STATE,
                                     g1.sys_ctl_id as id2,
                                     'CCI_GUARANTEE_CONTRACT_INFO' as tableName2
                               from CCI_GUARANTEE_CONTRACT_INFO g1
                             union all
                             select g2.major_contract_no,
                                     g2.busi_type,
                                     g2.GUARANTEE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g2.CONTRACT_EFFECTIVE_STATE,
                                     g2.sys_ctl_id as id2,
                                     'CCI_GUARANTEE_CON_INFO_NA' as tableName2
                               from CCI_GUARANTEE_CON_INFO_NA g2
                             union all
                             select g3.major_contract_no,
                                     g3.busi_type,
                                     g3.MORTGAGE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g3.CONTRACT_EFFECTIVE_STATE,
                                     g3.sys_ctl_id as id2,
                                     'CCI_MORTGAGE_CONTRACT_INFO' as tableName2
                               from CCI_MORTGAGE_CONTRACT_INFO g3
                             union all
                             select g4.major_contract_no,
                                     g4.busi_type,
                                     g4.MORTGAGE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g4.CONTRACT_EFFECTIVE_STATE,
                                     g4.sys_ctl_id as id2,
                                     'CCI_MORTGAGE_CON_INFO_NA' as tableName2
                               from CCI_MORTGAGE_CON_INFO_NA g4
                             union all
                             select g5.major_contract_no,
                                     g5.busi_type,
                                     g5.PLEDGE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g5.CONTRACT_EFFECTIVE_STATE,
                                     g5.sys_ctl_id as id2,
                                     'CCI_PLEDGE_CONTRACT_INFO' as tableName2
                               from CCI_PLEDGE_CONTRACT_INFO g5
                             union all
                             select g6.major_contract_no,
                                     g6.busi_type,
                                     g6.PLEDGE_CONTRACT_NO as GUARANTEE_CONTRACT_NO,
                                     g6.CONTRACT_EFFECTIVE_STATE,
                                     g6.sys_ctl_id as id2,
                                     'CCI_PLEDGE_CONTRACT_INFO_NA' as tableName2
                               from CCI_PLEDGE_CONTRACT_INFO_NA g6) g --保证总表 g
                      left join cci_report_system_ctl s
                        on s.sys_ctl_id = g.id2
                     where s.feedback_flag = '1'
                       and g.contract_effective_state = '1') gs --反馈成功的保证表 gs
            on ts.contract_no = gs.major_contract_no
           and gs.busi_type = CASE
                 WHEN ts.tablename = 'CCI_CONTRACT_INFO' THEN
                  '1'
                 WHEN ts.tablename = 'CCI_FACTORING_BUSI' THEN
                  '2'
                 WHEN ts.tablename = 'CCI_FINANCE_AGREEMENT_INFO' THEN
                  '4'
                 WHEN ts.tablename = 'CCI_CREDIT_LETTER_INFO' THEN
                  '5'
                 WHEN ts.tablename = 'CCI_INDEMNITY_BUSI' THEN
                  '6'
                 WHEN ts.tablename = 'CCI_BANK_ACCEPT_BUSI_INFO' THEN
                  '7'
               end) a
 group by a.contract_no, a.sys_ctl_id, a.tablename, a.busi_type
;

prompt
prompt Creating view CCI_CURNT_BUSI_CTL_VIEW
prompt =====================================
prompt
CREATE OR REPLACE FORCE VIEW MBT.CCI_CURNT_BUSI_CTL_VIEW AS
SELECT D."SEQ_NUM",D."SYS_CTL_ID",D."FILE_SEND_DATE",D."REPORT_BATCH_NO",D."MSG_RECORD_TRACKING_NO",D."MSG_RECORD_OPERATE_TYPE",D."MSG_RECORD_ROW",D."REPORT_FLAG",D."FEEDBACK_FLAG",D."DEPT_ID",D."OPERATING_STATE",D."REPORT_FILE_TYPE",D."MSG_RECORD_TYPE",D."BRANCH_ID",D."BRANCH_NO",D."RELATION_SYS_CTL_ID",D."ORG_BASIC_FEEDBACK_FLAG",D."OPERATE_TIME",D."OPERATER",D."CHECK_TIME",D."CHECK_OPERATOR",D."CHECK_ADD_MSG",D."LAST_UPDATE_TIME",D."LAST_UPDATER",D."LOGIC_DELETE_FLAG",D."DTL_NUM_A",D."DTL_NUM_B",D."DTL_NUM_C",D."DTL_NUM_D",D."RECORD_STATUS_FLAG",D."MESSAGE_TYPE",D."RELATION_FEEDBACK_ID",D."START_INDEX",D."END_INDEX",D."STEP_ID",D."BAT_DATE",D."TASK_ID",D."RSV_01",D."RSV_02",D."RSV_03",D."RSV_04",D."RSV_05",D."RSV_06"
FROM (
  SELECT  A.MSG_RECORD_TYPE AS MSG_RECORD_TYPE,
          A.SYS_CTL_ID AS SYS_CTL_ID,
          MAX(A.SEQ_NUM) AS SEQ_NUM
  FROM CCI_REPORT_SYSTEM_CTL_H A
  WHERE A.FEEDBACK_FLAG != '2' --反馈失败
  GROUP BY A.MSG_RECORD_TYPE,
          A.SYS_CTL_ID
) C
INNER JOIN CCI_REPORT_SYSTEM_CTL_H D
ON D.SEQ_NUM = C.SEQ_NUM
AND D.SYS_CTL_ID = C.SYS_CTL_ID
;

prompt
prompt Creating view CCI_EXT_FINACBUSI_VIEW
prompt ====================================
prompt
create or replace force view mbt.cci_ext_finacbusi_view as
(select t.SYS_CTL_ID as ext_cid,s.SYS_CTL_ID as finacbusi_cid
          from (select c.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.FINANCING_AGREEMENT_NO,
                       r.FINANCING_NO,
                       max(r.BUSI_DATE) as busi_date
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.FINANCING_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.FINANCING_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_busi_exten_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.FINANCING_NO = c.FINANCING_NO
                   and r.BUSI_DATE <= c.BUSI_DATE
                 GROUP BY c.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.FINANCING_AGREEMENT_NO,
                          r.FINANCING_NO) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.FINANCING_AGREEMENT_NO,
                           b.FINANCING_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL a
                     INNER JOIN cci_finance_busi_info b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.FINANCING_AGREEMENT_NO = s.FINANCING_AGREEMENT_NO
           and t.FINANCING_NO = s.FINANCING_NO
           and t.busi_date = s.busi_date
);

prompt
prompt Creating view CCI_EXT_RECEIPT_VIEW
prompt ==================================
prompt
create or replace force view mbt.cci_ext_receipt_view as
(select t.SYS_CTL_ID as ext_cid,s.SYS_CTL_ID as receipt_cid
          from (select c.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.LOAN_CONTRACT_NO,
                       r.RECIEPT_NO,
                       max(r.BUSI_DATE) as busi_date
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.RECIEPT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.RECIEPT_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_loan_extension_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.RECIEPT_NO = c.RECIEPT_NO
                   and r.BUSI_DATE <= c.BUSI_DATE
                 GROUP BY c.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.LOAN_CONTRACT_NO,
                          r.RECIEPT_NO) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.LOAN_CONTRACT_NO,
                           b.RECIEPT_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL a
                     INNER JOIN CCI_LOAN_RECEIPT_INFO b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.LOAN_CONTRACT_NO = s.LOAN_CONTRACT_NO
           and t.RECIEPT_NO = s.RECIEPT_NO
           and t.busi_date = s.busi_date
);

prompt
prompt Creating view CCI_FINACBUSI_EXTEN_VIEW
prompt ======================================
prompt
create or replace force view mbt.cci_finacbusi_exten_view as
(
select c.SYS_CTL_ID as ext_cid,r.SYS_CTL_ID as finacbusi_cid
          from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.FINANCING_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.FINANCING_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_busi_exten_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.FINANCING_NO = c.FINANCING_NO
                   and r.BUSI_DATE = c.BUSI_DATE
            );

prompt
prompt Creating view CCI_FINACBUSI_EXTNUM_VIEW
prompt =======================================
prompt
create or replace force view mbt.cci_finacbusi_extnum_view as
(
select t.SYS_CTL_ID as finacbusi_cid,t.ext_num as ext_num
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.FINANCING_AGREEMENT_NO,
                       r.FINANCING_NO,
                       count(1) as ext_num
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.FINANCING_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.FINANCING_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_busi_exten_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.FINANCING_NO = c.FINANCING_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.FINANCING_AGREEMENT_NO,
                          r.FINANCING_NO) t

);

prompt
prompt Creating view CCI_FINACBUSI_FINACAGRE_VIEW
prompt ==========================================
prompt
create or replace force view mbt.cci_finacbusi_finacagre_view as
(select t.SYS_CTL_ID as finacbusi_cid,s.SYS_CTL_ID as finaceagre_cid
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.FINANCING_AGREEMENT_NO,
                       max(c.BUSI_DATE) as busi_date
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_agreement_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.FINANCING_AGREEMENT_NO) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.FINANCING_AGREEMENT_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL a
                     INNER JOIN cci_finance_agreement_info b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.FINANCING_AGREEMENT_NO = s.FINANCING_AGREEMENT_NO
           and t.busi_date = s.busi_date
);

prompt
prompt Creating view CCI_FINACBUSI_FINACAGRE_VIEW_H
prompt ============================================
prompt
create or replace force view mbt.cci_finacbusi_finacagre_view_h as
(select t.SYS_CTL_ID as finacbusi_cid, s.SYS_CTL_ID as finaceagre_cid, max(t.SEQ_NUM) as SEQ_NUM
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.FINANCING_AGREEMENT_NO,
                       max(c.BUSI_DATE) as busi_date,
                       c.SEQ_NUM
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SEQ_NUM,
                                   a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.BUSI_DATE
                              from Cci_Report_System_Ctl_h a
                             INNER JOIN cci_finance_agreement_info_h b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.FINANCING_AGREEMENT_NO,
                          c.SEQ_NUM) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.SEQ_NUM,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.FINANCING_AGREEMENT_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL_H a
                     INNER JOIN cci_finance_agreement_info_h b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.FINANCING_AGREEMENT_NO = s.FINANCING_AGREEMENT_NO
           and t.busi_date = s.busi_date
           and t.SEQ_NUM = s.SEQ_NUM
           group by t.SYS_CTL_ID, s.SYS_CTL_ID
);

prompt
prompt Creating view CCI_FINACBUSI_REPAYSUMAMT_VIEW
prompt ============================================
prompt
create or replace force view mbt.cci_finacbusi_repaysumamt_view as
(
select t.SYS_CTL_ID as finacbusi_cid,t.repay_sum_amt as repay_sum_amt
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.FINANCING_AGREEMENT_NO,
                       r.FINANCING_NO,
                       sum(c.REPAYMENT_AMOUNT) as repay_sum_amt
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.FINANCING_NO,
                               b.FINANCING_AMOUNT,
                               b.FINANCING_BALANCE,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.FINANCING_NO,
                                   b.REPAYMENT_AMOUNT,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_busi_repay_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.FINANCING_NO = c.FINANCING_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.FINANCING_AGREEMENT_NO,
                          r.FINANCING_NO) t

);

prompt
prompt Creating view CCI_RECEIPT_CONTRACT_VIEW
prompt =======================================
prompt
create or replace force view mbt.cci_receipt_contract_view as
(select t.SYS_CTL_ID as receipt_cid,s.SYS_CTL_ID as contract_cid
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.LOAN_CONTRACT_NO,
                       max(c.BUSI_DATE) as busi_date
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN CCI_CONTRACT_INFO b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.LOAN_CONTRACT_NO) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.LOAN_CONTRACT_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL a
                     INNER JOIN CCI_CONTRACT_INFO b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.LOAN_CONTRACT_NO = s.LOAN_CONTRACT_NO
           and t.busi_date = s.busi_date
);

prompt
prompt Creating view CCI_RECEIPT_CONTRACT_VIEW_H
prompt =========================================
prompt
create or replace force view mbt.cci_receipt_contract_view_h as
(select t.SYS_CTL_ID as receipt_cid,s.SYS_CTL_ID as contract_cid,  max(t.SEQ_NUM) as SEQ_NUM
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.LOAN_CONTRACT_NO,
                       max(c.BUSI_DATE) as busi_date,
                       c.SEQ_NUM
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SEQ_NUM,
								   a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL_H a
                             INNER JOIN CCI_CONTRACT_INFO_H b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.LOAN_CONTRACT_NO,
                          c.SEQ_NUM) t
         INNER JOIN (select a.SYS_CTL_ID,
                           a.SEQ_NUM,
                           a.BRANCH_ID,
                           b.LOAN_CARD_NO,
                           b.LOAN_CONTRACT_NO,
                           b.BUSI_DATE
                      from CCI_REPORT_SYSTEM_CTL_H a
                     INNER JOIN CCI_CONTRACT_INFO_H b
                        on a.SYS_CTL_ID = b.SYS_CTL_ID
                        and a.logic_delete_flag = '0'
                        and a.feedback_flag != '4') s
            on t.BRANCH_ID = s.BRANCH_ID
           and t.LOAN_CARD_NO = s.LOAN_CARD_NO
           and t.LOAN_CONTRACT_NO = s.LOAN_CONTRACT_NO
           and t.busi_date = s.busi_date
       and t.SEQ_NUM = s.SEQ_NUM
           group by t.SYS_CTL_ID, s.SYS_CTL_ID
);

prompt
prompt Creating view CCI_RECEIPT_EXTEN_VIEW
prompt ====================================
prompt
create or replace force view mbt.cci_receipt_exten_view as
(
 select c.SYS_CTL_ID as ext_cid,r.SYS_CTL_ID as receipt_cid
          from(select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.RECIEPT_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.RECIEPT_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_loan_extension_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.RECIEPT_NO = c.RECIEPT_NO
                   and r.BUSI_DATE = c.BUSI_DATE
);

prompt
prompt Creating view CCI_RECEIPT_EXTNUM_VIEW
prompt =====================================
prompt
create or replace force view mbt.cci_receipt_extnum_view as
(
select t.SYS_CTL_ID as receipt_cid,t.ext_num as ext_num
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.LOAN_CONTRACT_NO,
                       r.reciept_no,
                       count(1) as ext_num
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.reciept_no,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.reciept_no,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN CCI_LOAN_EXTENSION_INFO b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.reciept_no = c.reciept_no
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.LOAN_CONTRACT_NO,
                          r.reciept_no) t

);

prompt
prompt Creating view CCI_RECEIPT_REPAYSUMAMT_VIEW
prompt ==========================================
prompt
create or replace force view mbt.cci_receipt_repaysumamt_view as
(
select t.SYS_CTL_ID as receipt_cid,t.repay_sum_amt as repay_sum_amt
          from (select r.SYS_CTL_ID,
                       r.BRANCH_ID,
                       r.LOAN_CARD_NO,
                       r.LOAN_CONTRACT_NO,
                       r.reciept_no,
                       sum(c.repayment_amount) as repay_sum_amt
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.reciept_no,
                               b.reciept_amount,
                               b.reciept_balance,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.reciept_no,
                                   b.repayment_amount,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_loan_repayment b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.reciept_no = c.reciept_no
                   and r.BUSI_DATE >= c.BUSI_DATE
                 GROUP BY r.SYS_CTL_ID,
                          r.BRANCH_ID,
                          r.LOAN_CARD_NO,
                          r.LOAN_CONTRACT_NO,
                          r.reciept_no) t

);

prompt
prompt Creating view CCI_REPAY_FINACBUSI_VIEW
prompt ======================================
prompt
create or replace force view mbt.cci_repay_finacbusi_view as
(
select c.SYS_CTL_ID as repay_cid,r.SYS_CTL_ID as finacbusi_cid
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.FINANCING_AGREEMENT_NO,
                               b.FINANCING_NO,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN cci_finance_busi_info b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.FINANCING_AGREEMENT_NO,
                                   b.FINANCING_NO,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_finance_busi_repay_info b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.FINANCING_AGREEMENT_NO = c.FINANCING_AGREEMENT_NO
                   and r.FINANCING_NO = c.FINANCING_NO
                   and r.BUSI_DATE = c.BUSI_DATE
);

prompt
prompt Creating view CCI_REPAY_RECEIPT_VIEW
prompt ====================================
prompt
create or replace force view mbt.cci_repay_receipt_view as
(
select c.SYS_CTL_ID as repay_cid,r.SYS_CTL_ID as receipt_cid
                  from (select a.SYS_CTL_ID,
                               a.BRANCH_ID,
                               b.LOAN_CARD_NO,
                               b.LOAN_CONTRACT_NO,
                               b.reciept_no,
                               b.BUSI_DATE
                          from CCI_REPORT_SYSTEM_CTL a
                         INNER JOIN CCI_LOAN_RECEIPT_INFO b
                            on a.SYS_CTL_ID = b.SYS_CTL_ID
                            and a.logic_delete_flag = '0'
                            and a.feedback_flag != '4') r
                 INNER JOIN (select a.SYS_CTL_ID,
                                   a.BRANCH_ID,
                                   b.LOAN_CARD_NO,
                                   b.LOAN_CONTRACT_NO,
                                   b.reciept_no,
                                   b.BUSI_DATE
                              from CCI_REPORT_SYSTEM_CTL a
                             INNER JOIN cci_loan_repayment b
                                on a.SYS_CTL_ID = b.SYS_CTL_ID
                                and a.logic_delete_flag = '0'
                                and a.feedback_flag != '4') c
                    on r.BRANCH_ID = c.BRANCH_ID
                   and r.LOAN_CARD_NO = c.LOAN_CARD_NO
                   and r.LOAN_CONTRACT_NO = c.LOAN_CONTRACT_NO
                   and r.reciept_no = c.reciept_no
                   and r.BUSI_DATE = c.BUSI_DATE
);


spool off
