--1 �߷� MBT 20160701
--���Ʊ����RELATION_FEEDBACK_ID�����������ı������¼���¼��Ϣ����
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RELATION_FEEDBACK_ID VARCHAR2(32);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RELATION_FEEDBACK_ID is '����������Ϣ��¼���';

--2 �߷� MBT 20160701
--�ļ����ձ����FILE_PATH_ZIP������ZIP�ļ�·��
ALTER TABLE CCI_FILE_RECEIVE_CTL ADD FILE_PATH_ZIP VARCHAR2(512);
COMMENT ON COLUMN CCI_FILE_RECEIVE_CTL.FILE_PATH_ZIP is '�ļ�·����zip��';

--4	����� MBT	20160701
--functionMapping����:�޸ı�CCI_FUNCTION_MAPPING ��BUSI_KEY�� KEY_METHOD�� KEY_NAME�ֶ�
ALTER TABLE CCI_FUNCTION_MAPPING MODIFY BUSI_KEY VARCHAR2(255);
ALTER TABLE CCI_FUNCTION_MAPPING MODIFY KEY_METHOD VARCHAR2(255);
ALTER TABLE CCI_FUNCTION_MAPPING MODIFY KEY_NAME VARCHAR2(255);

--5	�����	MBT	20160701
--�ļ��������ô���
update DP_FILE_DTL  set field_len='20',cut_flag='1' where file_id='CCI_CASH_FLOW_2007' and field_id ='CCI_CASH_FLOW_2007_018';

--6	��ԭ	MBT	20160701
--������Ϣ����������STATE_FLAG�ֶ�
ALTER TABLE CCI_ORGINFO_BASIC ADD STATE_FLAG VARCHAR2(1);
COMMENT ON COLUMN CCI_ORGINFO_BASIC.STATE_FLAG is '��¼���ɾ����־';
ALTER TABLE CCI_ORGINFO_BASIC_H ADD STATE_FLAG VARCHAR2(1);
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.STATE_FLAG is '��¼���ɾ����־';

--7	��ԭ	MBT	20160701
--�ϱ����Ʊ������ʼλ�ú���ֹλ��
alter table CCI_REPORT_SYSTEM_CTL add start_index VARCHAR2(4);
alter table CCI_REPORT_SYSTEM_CTL add end_index VARCHAR2(4);
comment on column CCI_REPORT_SYSTEM_CTL.start_index is '������ʼλ��';
comment on column CCI_REPORT_SYSTEM_CTL.end_index is '������ֹλ��';
alter table CCI_REPORT_SYSTEM_CTL_H add start_index VARCHAR2(4);
alter table CCI_REPORT_SYSTEM_CTL_H add end_index VARCHAR2(4);
comment on column CCI_REPORT_SYSTEM_CTL_H.start_index is '������ʼλ��';
comment on column CCI_REPORT_SYSTEM_CTL_H.end_index is '������ֹλ��';
  
--8	��ԭ	MBT	20160701
--�Ŵ�ҵ����Ϣɾ������Ϣ����ҵ��������У��
delete from biz_field_config where relation_id = '017' and field_name = 'busiDate';

--9	��ԭ	MBT	20160701
--�����Ա��Ϣ������STATE_FLAG�ֶ�
ALTER TABLE cci_orginfo_family_members ADD STATE_FLAG VARCHAR2(1);
COMMENT ON COLUMN cci_orginfo_family_members.STATE_FLAG is '��¼���ɾ����־';
ALTER TABLE cci_orginfo_family_members_h ADD STATE_FLAG VARCHAR2(1);
COMMENT ON COLUMN cci_orginfo_family_members_h.STATE_FLAG is '��¼���ɾ����־';

--11	��һ��	MBT	20160701
--��ҵ��λ������ر����룬ҵ����ʷ����sales_tax2�ĳ����ָ�ʽ(ԭ�����ַ���)
alter table CCI_IMP_012 modify SALES_TAX2 NUMBER(20,2);
alter table CCI_BUSI_UNIT_REVENUE modify SALES_TAX2 NUMBER(20,2);
alter table CCI_BUSI_UNIT_REVENUE_H modify SALES_TAX2 NUMBER(20,2);

--12	��һ��	MBT	20160701
--�޸�ErrorCode1034��1035��ʾ��Ϣ
update cci_error_code set error_describe = '��д�ˡ��������ô��롱ʱ��������д���Ǽ�ע��š�' where error_code = '1034';
update cci_error_code set error_describe = '����д���������ô��롱ʱ��������д����֯�������롱�͡���˰��ʶ��š�' where error_code = '1035';

--13	��һ��	MBT	20160701
--CCI_BUSI_UNIT_REVENUE���е�sales_tax2�ֶ��޸�Ϊ���ָ�ʽ,��ӳ�������޸�
update DP_TABLE_DTL set col_type = 'NUMBER' where table_id ='CCI_BUSI_UNIT_REVENUE' and col_name = 'SALES_TAX2';

--16	³��	MBT	20160701
--ɾ�����º����ϻ����ε���Ϣ��������
delete from BIZ_FIELD_CONFIG where relation_id='007' and field_name='msgRecordOperateType';

--17	�����	MBT	20160701
--����˹�ע����¼��������ҵ��������
update CCI_FUNCTION_MAPPING set KEY_NAME='���ڻ�������,�ͻ���,ҵ��������',KEY_METHOD='getBranchId,getCustomerCode,getBusiDate',BUSI_KEY='BRANCH_ID,CUSTOMER_CODE,BUSI_DATE' where table_no='007';

--18	³��	MBT	20160701
--�����������ðٷֱ�
delete from CCI_EVALUATION_PERCENTAGES where SUPER in ('QUALITY','X','Y','Z');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('X', 100.00, 'QUALITY');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Y', 100.00, 'QUALITY');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Z', 100.00, 'QUALITY');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('X1', 14.00, 'X');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('X2', 14.00, 'X');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('X3', 12.00, 'X');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Y3', 12.00, 'Y');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Y2', 14.00, 'Y');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Y1', 14.00, 'Y');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Z2', 7.00, 'Z');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Z3', 6.00, 'Z');
insert into CCI_EVALUATION_PERCENTAGES (SYS_CTL_ID, PERCENTAGE, SUPER) values ('Z1', 7.00, 'Z');

--19	����	MBT	20160701
--error_code�����A018��A019��ʾ��Ϣ��
delete from CCI_ERROR_CODE where EDITION='2.1' and ERROR_CODE in ('A018', 'A019');
insert into CCI_ERROR_CODE(EDITION,ERROR_TYPE,ERROR_CODE,ERROR_DESCRIBE,EFFECTIVE) values ('2.1','������Ϣ�������','A018','�˿ͻ��Ŷ�Ӧ�Ľ�������ƺʹ��������������ݿ��д���','1');
insert into CCI_ERROR_CODE(EDITION,ERROR_TYPE,ERROR_CODE,ERROR_DESCRIBE,EFFECTIVE) values ('2.1','������Ϣ�������','A019','�˿ͻ�����Ϣ�����ݿ��в����ڣ��뼰ʱ�ϱ�������Ӱ������','1');

--20	��ԭ	MBT	20160701
--�������ϣ���Ϊ�Ǽ���������˹�ע�Ĳ����ֶ���ӵ��������ϱ�
alter table CCI_BORROWER_CONCERINFO_BI add borrower_name VARCHAR2(160);
alter table CCI_BORROWER_CONCERINFO_BI add loan_card_no VARCHAR2(16);
alter table CCI_BORROWER_CONCERINFO_BI add busi_date VARCHAR2(8);
comment on column CCI_BORROWER_CONCERINFO_BI.borrower_name is '���������';
comment on column CCI_BORROWER_CONCERINFO_BI.loan_card_no is '�������';
comment on column CCI_BORROWER_CONCERINFO_BI.busi_date is 'ҵ��������';
alter table CCI_BORROWER_CONCERINFO_BI_H add borrower_name VARCHAR2(160);
alter table CCI_BORROWER_CONCERINFO_BI_H add loan_card_no VARCHAR2(16);
alter table CCI_BORROWER_CONCERINFO_BI_H add busi_date VARCHAR2(8);
comment on column CCI_BORROWER_CONCERINFO_BI_H.borrower_name is '���������';
comment on column CCI_BORROWER_CONCERINFO_BI_H.loan_card_no is '�������';
comment on column CCI_BORROWER_CONCERINFO_BI_H.busi_date is 'ҵ��������';
alter table CCI_BORROWER_CONCERINFO_LA add borrower_name VARCHAR2(160);
alter table CCI_BORROWER_CONCERINFO_LA add loan_card_no VARCHAR2(16);
alter table CCI_BORROWER_CONCERINFO_LA add busi_date VARCHAR2(8);
comment on column CCI_BORROWER_CONCERINFO_LA.borrower_name  is '���������';
comment on column CCI_BORROWER_CONCERINFO_LA.loan_card_no  is '�������';
comment on column CCI_BORROWER_CONCERINFO_LA.busi_date  is 'ҵ��������';
alter table CCI_BORROWER_CONCERINFO_LA_H add borrower_name VARCHAR2(160);
alter table CCI_BORROWER_CONCERINFO_LA_H add loan_card_no VARCHAR2(16);
alter table CCI_BORROWER_CONCERINFO_LA_H add busi_date VARCHAR2(8);
comment on column CCI_BORROWER_CONCERINFO_LA_H.borrower_name is '���������';
comment on column CCI_BORROWER_CONCERINFO_LA_H.loan_card_no is '�������';
comment on column CCI_BORROWER_CONCERINFO_LA_H.busi_date is 'ҵ��������';
				
--21	�����	MBT	20160701
--�����ʷ��ͼ
CREATE OR REPLACE VIEW CCI_CURNT_BUSI_CTL_VIEW AS
SELECT D.*
FROM (
  SELECT  A.MSG_RECORD_TYPE AS MSG_RECORD_TYPE,
          A.SYS_CTL_ID AS SYS_CTL_ID,
          MAX(A.SEQ_NUM) AS SEQ_NUM
  FROM CCI_REPORT_SYSTEM_CTL_H A
  WHERE A.FEEDBACK_FLAG != '2' --����ʧ��
  GROUP BY A.MSG_RECORD_TYPE,
          A.SYS_CTL_ID    
) C
INNER JOIN CCI_REPORT_SYSTEM_CTL_H D
ON D.SEQ_NUM = C.SEQ_NUM
AND D.SYS_CTL_ID = C.SYS_CTL_ID;

--22	³��	MBT	20160701
--DP_TABLE_DTLɾ������˹�ע��Ϣ�����º����ϼ������ֶ�
--�Խ���˹�ע����¡�������һ������ݿ���޸�

--1 �Ա�����޸�:
--����˹�ע��Ϣ
delete from  DP_TABLE where table_id='CCI_BORROWER_CONCERINFO_BA';
delete from DP_TABLE_DTL where COL_ID in ('CCI_BORROWER_CONCERINFO_BI_021', 'CCI_BORROWER_CONCERINFO_BI_022' ,'CCI_BORROWER_CONCERINFO_BI_023','CCI_BORROWER_CONCERINFO_LA_026','CCI_BORROWER_CONCERINFO_LA_027','CCI_BORROWER_CONCERINFO_LA_028');
--������Ϣ
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_021', 'CCI_BORROWER_CONCERINFO_BI', 21, 'BORROWER_NAME', '���������', 'VARCHAR2', '80', null, null, null, null, null, null);
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_022', 'CCI_BORROWER_CONCERINFO_BI', 22, 'LOAN_CARD_NO', '�������', 'VARCHAR2', '16', null, null, null, null, null, null);
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_023', 'CCI_BORROWER_CONCERINFO_BI', 23, 'BUSI_DATE', 'ҵ��������', 'VARCHAR2', '8', null, null, null, null, null, null);
--������Ϣ
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_028', 'CCI_BORROWER_CONCERINFO_LA', 28, 'BORROWER_NAME', '���������', 'VARCHAR2', '80', null, null, null, null, null, null);
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_027', 'CCI_BORROWER_CONCERINFO_LA', 27, 'LOAN_CARD_NO', '�������', 'VARCHAR2', '16', null, null, null, null, null, null);
insert into DP_TABLE_DTL (COL_ID, TABLE_ID, COL_SEQ_NO, COL_NAME, COL_DESC, COL_TYPE, COL_LEN, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_026', 'CCI_BORROWER_CONCERINFO_LA', 26, 'BUSI_DATE', 'ҵ��������', 'VARCHAR2', '8', null, null, null, null, null, null);

--2 ���ļ�������޸�--
--����˹�ע��Ϣ
delete from DP_FILE t where t.file_id='CCI_BORROWER_CONCERINFO_BA';
delete from DP_FILE_DTL t where t.file_id='CCI_BORROWER_CONCERINFO_BA';
--������Ϣ
update DP_FILE  set fixed_len_cfg='60,250,40,11,20,20,1,80,16,8,50,50,100,100,200,200'
where fixed_len_cfg='60,250,40,11,20,20,1,50,50,100,100,200,200';
--������Ϣ
update DP_FILE  set fixed_len_cfg='60,80,3,20,8,100,300,40,11,20,80,16,8,20,1,50,50,100,100,200,200'
where fixed_len_cfg='60,80,3,20,8,100,300,40,11,20,20,1,50,50,100,100,200,200';
--����
delete from DP_FILE_DTL t where t.file_id='CCI_BORROWER_CONCERINFO_LA';
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_001', 'CCI_BORROWER_CONCERINFO_LA', 1, 'PROSECUTION_RECORD_FLOW', '�����߼�¼��ˮ��', 60, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_002', 'CCI_BORROWER_CONCERINFO_LA', 2, 'PROSECUTOR_NAME', '����������', 80, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_003', 'CCI_BORROWER_CONCERINFO_LA', 3, 'CURRENCY', '����', 3, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_004', 'CCI_BORROWER_CONCERINFO_LA', 4, 'DECISION_EXECUTION_AMOUNT', '�о�ִ�н��', 20, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_005', 'CCI_BORROWER_CONCERINFO_LA', 5, 'DECISION_EXECUTION_DATE', '�о�ִ������', 8, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_006', 'CCI_BORROWER_CONCERINFO_LA', 6, 'EXECUTION_RESULT', 'ִ�н��', 100, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_007', 'CCI_BORROWER_CONCERINFO_LA', 7, 'PROSECUTION_REASON', '������ԭ��', 300, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_008', 'CCI_BORROWER_CONCERINFO_LA', 8, 'CUSTOMER_CODE', '�ͻ���', 40, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_009', 'CCI_BORROWER_CONCERINFO_LA', 9, 'BRANCH_ID', '���ڻ�������', 11, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_010', 'CCI_BORROWER_CONCERINFO_LA', 10, 'BRANCH_NO', '���к�', 20, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_011', 'CCI_BORROWER_CONCERINFO_LA', 11, 'BORROWER_NAME', '���������', 80, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_012', 'CCI_BORROWER_CONCERINFO_LA', 12, 'LOAN_CARD_NO', '�������', 16, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_013', 'CCI_BORROWER_CONCERINFO_LA', 13, 'BUSI_DATE', 'ҵ��������', 8, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_014', 'CCI_BORROWER_CONCERINFO_LA', 14, 'DEPT_ID', '����', 20, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_015', 'CCI_BORROWER_CONCERINFO_LA', 15, 'MSG_RECORD_OPERATE_TYPE', '��Ϣ��¼��������', 1, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_016', 'CCI_BORROWER_CONCERINFO_LA', 16, 'RSV_01', 'Ԥ���ֶ�1', 50, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_017', 'CCI_BORROWER_CONCERINFO_LA', 17, 'RSV_02', 'Ԥ���ֶ�2', 50, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_018', 'CCI_BORROWER_CONCERINFO_LA', 18, 'RSV_03', 'Ԥ���ֶ�3', 100, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_019', 'CCI_BORROWER_CONCERINFO_LA', 19, 'RSV_04', 'Ԥ���ֶ�4', 100, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_020', 'CCI_BORROWER_CONCERINFO_LA', 20, 'RSV_05', 'Ԥ���ֶ�5', 200, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_LA_021', 'CCI_BORROWER_CONCERINFO_LA', 21, 'RSV_06', 'Ԥ���ֶ�6', 200, '1', null, null, null, null, null, null);


--����
delete from DP_FILE_DTL where file_id='CCI_BORROWER_CONCERINFO_BI';

insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_001', 'CCI_BORROWER_CONCERINFO_BI', 1, 'IMPORTANT_RECORD_FLOW', '������Ϣ��¼��ˮ��', 60, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_002', 'CCI_BORROWER_CONCERINFO_BI', 2, 'IMPORTANT_DESCRIPTION', '��������', 250, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_003', 'CCI_BORROWER_CONCERINFO_BI', 3, 'CUSTOMER_CODE', '�ͻ���', 40, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_004', 'CCI_BORROWER_CONCERINFO_BI', 4, 'BRANCH_ID', '���ڻ�������', 11, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_005', 'CCI_BORROWER_CONCERINFO_BI', 5, 'BRANCH_NO', '���к�', 20, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_006', 'CCI_BORROWER_CONCERINFO_BI', 6, 'DEPT_ID', '����', 20, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_007', 'CCI_BORROWER_CONCERINFO_BI', 7, 'MSG_RECORD_OPERATE_TYPE', '��Ϣ��¼��������', 1, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_011', 'CCI_BORROWER_CONCERINFO_BI', 11, 'RSV_01', 'Ԥ���ֶ�1', 50, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_012', 'CCI_BORROWER_CONCERINFO_BI', 12, 'RSV_02', 'Ԥ���ֶ�2', 50, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_013', 'CCI_BORROWER_CONCERINFO_BI', 13, 'RSV_03', 'Ԥ���ֶ�3', 100, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_014', 'CCI_BORROWER_CONCERINFO_BI', 14, 'RSV_04', 'Ԥ���ֶ�4', 100, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_015', 'CCI_BORROWER_CONCERINFO_BI', 15, 'RSV_05', 'Ԥ���ֶ�5', 200, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_016', 'CCI_BORROWER_CONCERINFO_BI', 16, 'RSV_06', 'Ԥ���ֶ�6', 200, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_010', 'CCI_BORROWER_CONCERINFO_BI', 10, 'BUSI_DATE', 'ҵ��������', 8, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_009', 'CCI_BORROWER_CONCERINFO_BI', 9, 'LOAN_CARD_NO', '�������', 16, '1', null, null, null, null, null, null);
insert into DP_FILE_DTL (FIELD_ID, FILE_ID, FIELD_SEQ_NO, FIELD_NAME, FIELD_DESC, FIELD_LEN, CUT_FLAG, COMMENTS, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('CCI_BORROWER_CONCERINFO_BI_008', 'CCI_BORROWER_CONCERINFO_BI', 8, 'BORROWER_NAME', '���������', 80, '1', null, null, null, null, null, null);


--3 �Ե������õ��޸� DP_IMP_CFG ��  DP_IMP_CFG_DTL
delete from DP_IMP_CFG  where table_name='CCI_IMP_007';
delete from DP_IMP_CFG_DTL  where imp_id='20160104000000000000000000000126';
delete from DP_IMP_CFG_DTL where IMP_DTL_ID in ('20160104000000000000000000001770', '20160104000000000000000000001771' ,'20160104000000000000000000001772' ,'20160104000000000000000000001769', '20160104000000000000000000001768' ,'20160104000000000000000000001767');

insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001770', '20160104000000000000000000000128', 'BORROWER_NAME', 'BORROWER_NAME', null, null, null, null, null);
insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001771', '20160104000000000000000000000128', 'LOAN_CARD_NO', 'LOAN_CARD_NO', null, null, null, null, null);
insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001772', '20160104000000000000000000000128', 'BUSI_DATE', 'BUSI_DATE', null, null, null, null, null);
insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001769', '20160104000000000000000000000127', 'BORROWER_NAME', 'BORROWER_NAME', null, null, null, null, null);
insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001768', '20160104000000000000000000000127', 'LOAN_CARD_NO', 'LOAN_CARD_NO', null, null, null, null, null);
insert into DP_IMP_CFG_DTL (IMP_DTL_ID, IMP_ID, FIELD_NAME, COL_NAME, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160104000000000000000000001767', '20160104000000000000000000000127', 'BUSI_DATE', 'BUSI_DATE', null, null, null, null, null);

--4 ��ӳ�����õ��޸�
delete from DP_MPP_CFG t where t.mpp_name='CCI_MPP_007';
delete from DP_MPP_LOG t where t.mpp_id='20160105000000000000000000000007';


--�Ի���������Ϣ��һ������ݿ����Ϣ�޸ģ�
--����������ά�����޸ģ�
delete from BAT_STEP_INFO t where t.step_name = '����˹�ע��Ϣ';


--��ʱ�� :
--�¼��������ֶ�; 
--ɾ������˹�ע��Ϣ007��ʱ��
drop table CCI_IMP_007;

alter table CCI_IMP_008 add BORROWER_NAME VARCHAR2(80);
comment on column CCI_IMP_008.BORROWER_NAME is '���������';
alter table CCI_IMP_008 add LOAN_CARD_NO VARCHAR2(16);
comment on column CCI_IMP_008.LOAN_CARD_NO is '�������';
alter table CCI_IMP_008 add BUSI_DATE VARCHAR2(8);
comment on column CCI_IMP_008.BUSI_DATE is 'ҵ��������';
alter table CCI_IMP_009 add BORROWER_NAME VARCHAR2(80);
comment on column CCI_IMP_009.BORROWER_NAME is '���������';
alter table CCI_IMP_009 add LOAN_CARD_NO VARCHAR2(16);
comment on column CCI_IMP_009.LOAN_CARD_NO is '�������';
alter table CCI_IMP_009 add BUSI_DATE VARCHAR2(8);
comment on column CCI_IMP_009.BUSI_DATE is 'ҵ��������';

	
--23	�����	MBT	20160701
--error_code�����A020��A021��A022��A023��A024��A025��ʾ��Ϣ��
delete from CCI_ERROR_CODE where EDITION='2.1' and ERROR_CODE in ('A020', 'A021' ,'A022' ,'A023', 'A024' ,'A025');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A020', '��֯��������ڻ�����Ϣ������������Ϊ�ɼ����ݱ�׼�����Ա�����д', '1');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A021', '�߹ܼ���Ҫ��ϵ����Ϣ����ȫ��ɾ��', '1');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A022', '��Ҫ������ҵ��Ϣ����ȫ��ɾ��', '1');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A023', '��Ҫ�ɶ���Ϣ����ȫ��ɾ��', '1');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A024', '�ϱ���Ϣ���ϴ��ϱ��ɹ���Ϣһ�£������ϱ�', '1');
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.1', '������Ϣ�������', 'A025', '�����������Զ��е������ڻ�����Ϣ������������Ϊ�ɼ����ݱ�׼�����Ա�����д', '1');


--24	��ԭ	MBT	20160701
--�������ϱ�����Ϣ�����޸�
delete CCI_REPORT_INFO_TYPE_CONFIG t where t.file_configure_ctl_no in (24,25);

insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('24', 'B', null, null, '0', 1, 143, null, null, null, null, '0', '0', null);
insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('24', 'C', null, null, '0', 2, 62, null, null, null, null, '0', '1', null);
insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('24', 'D', '����˹�ע��Ϣ_������Ϣ', 'CCI_BORROWER_CONCERINFO_LA', '0', 3, 572, null, null, null, null, '0', '0', null);
insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('25', 'B', null, null, '0', 1, 143, null, null, null, null, '0', '0', null);
insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('25', 'C', null, null, '0', 2, 62, null, null, null, null, '0', '1', null);
insert into CCI_REPORT_INFO_TYPE_CONFIG (FILE_CONFIGURE_CTL_NO, RECORD_FORM_TYPE, DATA_SOURCE_TABLE_NAME, DATA_SOURCE_TABLE_PHYSIC_NAME, RECORD_FORM_TYPE_CYCLE_FLAG, 
COLUMN_OUTPUT_SEQUENCE, RECORD_TOTAL_LENGTH, OPERATE_TIME, OPERATER, LAST_UPDATE_TIME, LAST_UPDATER, LOGIC_DELETE_FLAG, CHANGE_SEG_FLAG, RELATION)
values ('25', 'E', '����˹�ע��Ϣ_������Ϣ', 'CCI_BORROWER_CONCERINFO_BI', '0', 3, 311, null, null, null, null, '0', '0', null);


--26	�����	MBT	20160701
--�����ĸ��Ӷ�����parentI�ֶ�
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_CONTACT ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.PARENT_I is 'I����ҵ��sysCtlId';

ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.PARENT_I is 'I����ҵ��sysCtlId';
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD PARENT_I VARCHAR2(32);
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.PARENT_I is 'I����ҵ��sysCtlId';

--27	�߷�	MBT	20160701
--"���������������ݿ��޸ģ�1�����Ʊ�����TASK_ID,STEP_ID,BAT_DATE.2���޸�COM_DATA_GEN_CFG��ɾ��������Ϣ"
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD (STEP_ID VARCHAR2(5));
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD (BAT_DATE VARCHAR2(8));
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD (TASK_ID VARCHAR2(5));

ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD (STEP_ID VARCHAR2(5));
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD (BAT_DATE VARCHAR2(8));
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD (TASK_ID VARCHAR2(5));

UPDATE COM_DATA_GEN_CFG
   SET DELETE_TABLE_NAMES =
       (SELECT DELETE_TABLE_NAMES || ',CCI_REPORT_SYSTEM_CTL'
          FROM COM_DATA_GEN_CFG T
         WHERE T.MSG_NO = COM_DATA_GEN_CFG.MSG_NO)
 WHERE DELETE_TABLE_NAMES NOT LIKE '%CCI_REPORT_SYSTEM_CTL' AND DELETE_TABLE_NAMES IS NOT NULL;


--28	��ԭ	MBT	20160701
--��������ֱ������ǿ�У��
delete from BIZ_FIELD_CONFIG where FIELD_ID in ('1078' ,'1079', '1080', '1081', '1082', '1083');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1078', '008', 'customerCode', 'getCustomerCode', null, '�ͻ���', '1', -1, 1, 'required,type', ',$type');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1079', '008', 'borrowerName', 'getBorrowerName', null, '���������', '2', 80, 2, 'required,type,length', ',$type,$length');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1080', '008', 'loanCardNo', 'getLoanCardNo', null, '�������', '1', 16, 3, 'required,type,length,loancard', ',$type,$length,');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1081', '008', 'branchNo', 'getBranchNo', null, '���к�', '1', -1, 4, 'required,type', ',$type');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1082', '008', 'branchId', 'getBranchId', null, '���ڻ�������', '1', 11, 5, 'required,type,length', ',$type,$length');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1083', '008', 'busiDate', 'getBusiDate', null, 'ҵ��������', '0', 8, 7, 'required,type,date,length', ',$type,,$length');

delete from BIZ_FIELD_CONFIG where FIELD_ID in ('1084' ,'1085', '1086', '1087', '1088', '1089');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1084', '009', 'customerCode', 'getCustomerCode', null, '�ͻ���', '1', -1, 1, 'required,type', ',$type');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1085', '009', 'borrowerName', 'getBorrowerName', null, '���������', '2', 80, 2, 'required,type,length', ',$type,$length');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1086', '009', 'loanCardNo', 'getLoanCardNo', null, '�������', '1', 16, 3, 'required,type,length,loancard', ',$type,$length,');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1087', '009', 'branchNo', 'getBranchNo', null, '���к�', '1', -1, 4, 'required,type', ',$type');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1088', '009', 'branchId', 'getBranchId', null, '���ڻ�������', '1', 11, 5, 'required,type,length', ',$type,$length');
insert into BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD)
values ('1089', '009', 'busiDate', 'getBusiDate', null, 'ҵ��������', '0', 8, 7, 'required,type,date,length', ',$type,,$length');


--30	�����	MBT	20160701
--�����ĸ��Ӷ�����record_type,file_type
UPDATE CCI_FUNCTION_MAPPING SET RECORD_TYPE='43', FILE_TYPE = '51' WHERE TABLE_NO='034';
UPDATE CCI_FUNCTION_MAPPING SET RECORD_TYPE='44', FILE_TYPE = '51' WHERE TABLE_NO='035';
UPDATE CCI_FUNCTION_MAPPING SET RECORD_TYPE='45', FILE_TYPE = '51' WHERE TABLE_NO='042';
UPDATE CCI_FUNCTION_MAPPING SET RECORD_TYPE='46', FILE_TYPE = '51' WHERE TABLE_NO='043';

--31	�߷�	MBT	20160701
--�޸����11������˰��2����ӳ������δ�޸�
update DP_TABLE_DTL set COL_TYPE = 'NUMBER' where TABLE_ID='CCI_BUSI_UNIT_REVENUE' and COL_NAME='SALES_TAX2'and COL_ID='CCI_BUSI_UNIT_REVENUE_062';

--33	�����	MBT	20160701
--���������Ӽ�¼����У������
delete from BIZ_FIELD_CONFIG where FIELD_ID in ('1090', '1091', '1092');
INSERT INTO BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD) VALUES ('1090', '041', 'msgRecordOperateType', 'getMsgRecordOperateType', NULL, '��Ϣ��¼��������', '1', '1', '6', 'required,type,length', ',$type,$length');
INSERT INTO BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD) VALUES ('1091', '040', 'msgRecordOperateType', 'getMsgRecordOperateType', NULL, '��Ϣ��¼��������', '1', '1', '6', 'required,type,length', ',$type,$length');
INSERT INTO BIZ_FIELD_CONFIG (FIELD_ID, RELATION_ID, FIELD_NAME, METHOD_NAME, COLUMN_NAME, NAME, TYPE, LENGTH, SORT_NO, VALID_RULE, VALID_STD) VALUES ('1092', '037', 'msgRecordOperateType', 'getMsgRecordOperateType', NULL, '��Ϣ��¼��������', '1', '1', '6', 'required,type,length', ',$type,$length');


--34	�߷�	MBT	20160701
--�������ɱ�����ֶ����ô���
UPDATE CCI_REPORT_DATA_ITEM_CONFIG
   SET MODEL_NAME = ''
 WHERE RECORD_FORM_TYPE = 'C'
   AND COLUMN_NAME = '��Ϣ���';
UPDATE  CCI_REPORT_DATA_ITEM_CONFIG 
SET MODEL_NAME='BUSINUM'
 WHERE FILE_CONFIGURE_CTL_NO = '28'
   AND RECORD_FORM_TYPE = 'C'
   AND COLUMN_NAME = 'ҵ���ʶ��';

--36	�����	MBT	20160701
--v2.2���ֶ�����У������codelistУ������
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_RELATION_PARTY_TYPE' where RELATION_ID = '037' and FIELD_NAME = 'relationPartyType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_FAMILY_RALATIONSHIP' where RELATION_ID = '039' and FIELD_NAME = 'familyRelationship';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_FAMILY_RALATIONSHIP' where RELATION_ID = '038' and FIELD_NAME = 'familyRelationship';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_RELATION_TYPE' where RELATION_ID = '040' and FIELD_NAME = 'relationType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_REGISTRATION_CODE_TYPE' where RELATION_ID = '040' and FIELD_NAME = 'registrationCodeType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_NATIONALITY' where RELATION_ID = '034' and FIELD_NAME = 'nationnality';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_AREA' where RELATION_ID = '034' and FIELD_NAME = 'registationAreaDivision';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ORG_TYPE' where RELATION_ID = '034' and FIELD_NAME = 'orgType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ORG_TYPE_CLASSIFY' where RELATION_ID = '034' and FIELD_NAME = 'orgTypeClassify';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ECONOMIC_CLASSIFY' where RELATION_ID = '034' and FIELD_NAME = 'economicClassify';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ECONOMIC_TYPE' where RELATION_ID = '034' and FIELD_NAME = 'economicType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_CUSTOMER_TYPE' where RELATION_ID = '033' and FIELD_NAME = 'customerType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_REGISTRATION_CODE_TYPE' where RELATION_ID = '033' and FIELD_NAME = 'registrationCodeTypeA';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_REGISTRATION_CODE_TYPE' where RELATION_ID = '043' and FIELD_NAME = 'registrationCodeTypeE';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_BASIC_STATUS' where RELATION_ID = '042' and FIELD_NAME = 'basicStatus';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ENTERPRISE_SCALE' where RELATION_ID = '042' and FIELD_NAME = 'enterpriseScale';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'type,length,codelist',VALID_STD = '$type,$length,CL_ORG_STATUS' where RELATION_ID = '042' and FIELD_NAME = 'orgStatus';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_SHAREHOLDER_TYPE' where RELATION_ID = '041' and FIELD_NAME = 'shareholderType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_MSG_RECORD_OPERATE_TYPE' where RELATION_ID = '041' and FIELD_NAME = 'msgRecordOperateType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_MSG_RECORD_OPERATE_TYPE' where RELATION_ID = '040' and FIELD_NAME = 'msgRecordOperateType';
UPDATE BIZ_FIELD_CONFIG SET VALID_RULE = 'required,type,length,codelist',VALID_STD = ',$type,$length,CL_MSG_RECORD_OPERATE_TYPE' where RELATION_ID = '037' and FIELD_NAME = 'msgRecordOperateType';


--37	�����	MBT	20160701
--�����������������޸�
delete from BAT_STEP_RELY where TASK_ID = '00002';
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00001', '00048');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00002', '00001');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00003', '00002');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00004', '00003');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00005', '00004');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00006', '00005');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00008', '00041');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00009', '00008');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00010', '00006');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00011', '00010');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00012', '00011');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00013', '00012');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00014', '00013');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00015', '00016');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00016', '00045');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00017', '00014');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00018', '00017');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00019', '00018');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00020', '00021');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00021', '00028');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00022', '00024');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00023', '00020');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00024', '00023');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00025', '00044');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00026', '00047');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00027', '00019');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00028', '00030');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00029', '00015');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00030', '00029');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00031', '00025');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00032', '00026');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00034', '00033');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00035', '00034');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00036', '00027');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00037', '00043');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00038', '00036');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00039', '00009');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00040', '00037');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00041', '00040');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00042', '00035');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00043', '00042');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00044', '00032');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00045', '00039');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00046', '00038');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00047', '00046');
INSERT INTO BAT_STEP_RELY (TASK_ID, STEP_ID, RELY_STEP_ID) VALUES ('00002', '00048', '00022');


--38	�����	MBT	20160701
--��ҳ������ʾ�����޸�
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='����������Ϣ'                 WHERE TABLE_NO='033';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='��������������Ϣ'             WHERE TABLE_NO='034';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='����������Ϣ'                 WHERE TABLE_NO='035';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='�����߹���Ϣ'                 WHERE TABLE_NO='037';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='����������ҵ��Ϣ'             WHERE TABLE_NO='040';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='������Ҫ�ɶ���Ϣ'             WHERE TABLE_NO='041';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='����״̬��Ϣ'                 WHERE TABLE_NO='042';
UPDATE CCI_FUNCTION_MAPPING SET BUSI_NAME='�����ϼ����������ܵ�λ����Ϣ' WHERE TABLE_NO='043';


--39	�߷�	MBT	20160729
--��Ϣ��¼���ٱ��Ĭ��20��0
update CCI_REPORT_DATA_ITEM_CONFIG  set changeable_value = '00000000000000000000'
 where column_name = '��Ϣ��¼���ٱ��' and column_length = '20' and column_source = 'c';

--40	³��	mbt	20160729
--BIZ_FIELD_CONFIG�޸�����Э����Ϣ����ֶ�
update  BIZ_FIELD_CONFIG  set relation_id='020',field_name='financingAgreementAmount',method_name='getFinancingAgreementAmount',name='����Э����' where field_id='393';
update  BIZ_FIELD_CONFIG  set relation_id='020',field_name='financingAgreementBalance',method_name='getFinancingAgreementBalance',name='����Э�����' where field_id='394';

--42	³��	mbt	20160729
--error_code����Ϣ��¼���������ڴ���ҵ����ϢֻҪ�޸ĺ�����
update CCI_ERROR_CODE set error_describe ='����Ϣ��¼��������Ϊ���������޸ġ�ʱ�����ڴ���ҵ��չ����Ϣ��¼����Ӧ�����´���ҵ������Ϣ��¼��չ�ڱ�־����Ϊ���ǡ�'where error_code='4192'; 
update CCI_ERROR_CODE set error_describe='�Ժ��С�չ�ڱ�־������Ϣ��¼���������չ�ڱ�־��Ϊ�����ǡ������ҡ���Ϣ��¼�������͡�Ϊ �����������޸ġ�ʱ�����Ŵ�ҵ����Ϣ�����ļ��еĴ�����ʣ�ҵ����Ϣ�ɼ����Ļ������ݿ��б�������������¼���Ӧ��չ����Ϣ��¼����' where error_code='3009';
update CCI_ERROR_CODE set error_describe='�Ժ��С�չ�ڱ�־������Ϣ��¼������Ϣ��¼�������͡�Ϊ�����������޸ġ�ʱ�����ǰһ���ϱ��Ķ�Ӧ��Ϣ��¼�ġ�չ�ڱ�־��Ϊ���ǡ��������Ϣ��¼�ġ�չ�ڱ�־������Ϊ�����ǡ�' where error_code='3010';

--45	��ԭ	mbt	20160729
--error_code���ӣ�����У��ɾ������Ϣ
delete from CCI_ERROR_CODE where EDITION = '2.1' and ERROR_CODE in ('A026', 'A027');
insert into CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A026', 'ֻ�и߹ܼ���Ҫ��ϵ�˶κ��й�ϵ�����ͣ�������Ϣ��ɾ��������ϵ������', '1');
insert into CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A027', 'ɾ��������Ϣδ��⣬����ɾ��', '1');

--46	³��	mbt	20160729
--error_code���ӣ�����У�鵣��ҵ����Ϣ
delete from CCI_ERROR_CODE where EDITION = '2.1' and ERROR_CODE = 'A028';
insert into CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A028', '���Ҫ�����һ����ҵ���Ӧ�����е�����ϵ�������ϱ���������־����Ϊ���񡱵���ҵ���¼��ϵͳ�ڱ����ҵ���ͬʱ��Ҳ�Ὣ����ҵ���µ����е�����ͬ��ϵ���н���������ٱ��ͽ�������Ķ�����¼', '1');

--47	��ԭ	mbt	20160729
--���Ԥ���ֶ�1-6��ҵ���ҵ����ʷ��(����ʹ�������ִ��)
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FACTORING_BUSI ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES1 VARCHAR2(50);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES1 is 'Ԥ���ֶ�1';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FACTORING_BUSI ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES2 VARCHAR2(50);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES2 is 'Ԥ���ֶ�2';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FACTORING_BUSI ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES3 VARCHAR2(100);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES3 is 'Ԥ���ֶ�3';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FACTORING_BUSI ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES4 VARCHAR2(100);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES4 is 'Ԥ���ֶ�4';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FACTORING_BUSI ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES5 VARCHAR2(200);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES5 is 'Ԥ���ֶ�5';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_REVENUE ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2002 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2007 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CREDIT_LETTER_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FACTORING_BUSI ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_INDEMNITY_BUSI ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_EXTENSION_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_RECEIPT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_REPAYMENT ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_CONTACT ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_DELETE ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_ORG_STATUS ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO ADD RES6 VARCHAR2(200);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CASH_FLOW_2002.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CASH_FLOW_2007.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CONTRACT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FACTORING_BUSI.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_BASIC.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_DELETE.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO.RES6 is 'Ԥ���ֶ�6';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES1 VARCHAR2(50);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES1 VARCHAR2(50);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES1 is 'Ԥ���ֶ�1';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES1 is 'Ԥ���ֶ�1';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES2 VARCHAR2(50);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES2 VARCHAR2(50);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES2 is 'Ԥ���ֶ�2';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES2 is 'Ԥ���ֶ�2';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES3 VARCHAR2(100);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES3 VARCHAR2(100);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES3 is 'Ԥ���ֶ�3';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES3 is 'Ԥ���ֶ�3';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES4 VARCHAR2(100);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES4 VARCHAR2(100);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES4 is 'Ԥ���ֶ�4';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES4 is 'Ԥ���ֶ�4';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES5 VARCHAR2(200);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES5 VARCHAR2(200);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES5 is 'Ԥ���ֶ�5';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES5 is 'Ԥ���ֶ�5';

ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2002_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CASH_FLOW_2007_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CONTRACT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FACTORING_BUSI_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_INDEMNITY_BUSI_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_LOAN_REPAYMENT_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_CONTACT_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_DELETE_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H ADD RES6 VARCHAR2(200);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H ADD RES6 VARCHAR2(200);

COMMENT ON COLUMN CCI_ADVANCE_BUSINESS_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_DISPOSAL_BUSI_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2002_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ASSETS_LIABILITY_2007_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BANK_ACCEPT_BUSI_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BILL_DISCOUNT_BUSI_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_BI_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BORROWER_CONCERINFO_LA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_INTEREST_OWE_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_UNIT_ASSETS_LIA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_BUSI_UNIT_REVENUE_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CASH_FLOW_2002_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CASH_FLOW_2007_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CONTRACT_AMOUNT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CONTRACT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CREDIT_LETTER_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_CRE_BUSI_DATA_DEL_REQ_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FACTORING_BUSI_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_AGREEMENT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_EXTEN_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINANCE_BUSI_REPAY_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_FINAN_AGR_AMOUNT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_GUARANTEE_CONTRACT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_GUARANTEE_CON_INFO_NA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_INDEMNITY_BUSI_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_EXTENSION_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_RECEIPT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_LOAN_REPAYMENT_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_MORTGAGE_CONTRACT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_MORTGAGE_CON_INFO_NA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_BASIC_PROPERTY_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_CONTACT_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_DELETE_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_EXECUTIVE_RELA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEMBERS_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_FAMILY_MEM_DEL_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_REL_COR_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_IMPORT_S_H_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_ORG_STATUS_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_ORGINFO_SUPERIOR_MECH_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PLEDGE_CONTRACT_INFO_NA_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2002_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PROFIT_DISTRIBUT_2007_H.RES6 is 'Ԥ���ֶ�6';
COMMENT ON COLUMN CCI_PUBLIC_CREDIT_INFO_H.RES6 is 'Ԥ���ֶ�6';

ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES1 VARCHAR2(50);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES1 is 'Ԥ���ֶ�1';
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES2 VARCHAR2(50);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES2 is 'Ԥ���ֶ�2';
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES3 VARCHAR2(100);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES3 is 'Ԥ���ֶ�3';
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES4 VARCHAR2(100);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES4 is 'Ԥ���ֶ�4';
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES5 VARCHAR2(200);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES5 is 'Ԥ���ֶ�5';
ALTER TABLE CCI_REPORT_SYSTEM_CTL ADD RES6 VARCHAR2(200);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES6 is 'Ԥ���ֶ�6';

ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES1 VARCHAR2(50);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES1 is 'Ԥ���ֶ�1';
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES2 VARCHAR2(50);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES2 is 'Ԥ���ֶ�2';
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES3 VARCHAR2(100);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES3 is 'Ԥ���ֶ�3';
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES4 VARCHAR2(100);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES4 is 'Ԥ���ֶ�4';
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES5 VARCHAR2(200);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES5 is 'Ԥ���ֶ�5';
ALTER TABLE CCI_REPORT_SYSTEM_CTL_H ADD RES6 VARCHAR2(200);
COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES6 is 'Ԥ���ֶ�6';


--49	�����	MBT	20160729
--error_code���ӣ����ڻ����Ӽ�¼�޸�����¼δ�޸�
delete from CCI_ERROR_CODE where EDITION='2.2' and ERROR_CODE='A029';
INSERT INTO CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE) VALUES ('2.2', '������Ϣ�������', 'A029', '����������Ϣ�ϱ�����������������Σ����޸Ļ���������Ϣ', '1');

--51	�߷�	MBT	20160729
--CCI_ERROR_CODE���A030
delete from CCI_ERROR_CODE where EDITION='2.1' and ERROR_CODE='A030';
delete from CCI_ERROR_CODE where EDITION='2.1' and ERROR_CODE='A031';
insert into CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A030', '�ϱ�������ͬ��¼��������ͬ���Ϊ��QBZHT��������ͬ����������Ϊ���������루ȫ�㣩���Һ�ͬ��Ч��־Ϊ��', '1');
insert into CCI_ERROR_CODE (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A031', '��ҵ��ĵ�����־Ϊ�ǣ�������ͬ����������Ӧ�ĵ�����Ϣ', null);

--53	��ԭ	MBT	20160729
--�����ҵ���ж��ٵ�����ͬ����ͼ
CREATE OR REPLACE VIEW CCI_BUSI_GUARANTEE_VIEW AS
select a.contract_no, a.sys_ctl_id, a.busi_type, a.tablename, count(a.id2) as count
  from (select *
          from (
                --�����ɹ���ҵ��� ts
                select t.*
                  from (
                         --�Ŵ�ҵ���ܱ� t
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
                           from CCI_BANK_ACCEPT_BUSI_INFO t7) t --�Ŵ�ҵ���ܱ� t
                  left join cci_report_system_ctl s
                    on s.sys_ctl_id = t.sys_ctl_id
                 where s.feedback_flag = '1'
                   and t.guarantee_flag = '1') ts --�����ɹ���ҵ��� ts
         inner join (
                    --�����ɹ��ı�֤�� gs
                    select g.*
                      from (
                             --��֤�ܱ� g
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
                               from CCI_PLEDGE_CONTRACT_INFO_NA g6) g --��֤�ܱ� g
                      left join cci_report_system_ctl s
                        on s.sys_ctl_id = g.id2
                     where s.feedback_flag = '1'
                       and g.contract_effective_state = '1') gs --�����ɹ��ı�֤�� gs
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
 group by a.contract_no, a.sys_ctl_id, a.tablename, a.busi_type;


--55	��ԭ	MBT	20160729
--function_mapping �ӻ���ҵ���������������
delete from CCI_FUNCTION_MAPPING t where busi_name like '%����%';
insert into CCI_FUNCTION_MAPPING (TABLE_NO, TABLE_NAME, FUNC_NAME, BUSI_NAME, RECORD_TYPE, FILE_TYPE, BUSI_KEY, KEY_METHOD, TABLE_TYPE, KEY_NAME, MESSAGE_TYPE, EDITION, IMP_TABLE)
values ('024', 'CCI_FINANCE_BUSI_REPAY_INFO', 'CciFinanceBusiRepayInfo', '����ҵ�񻹿���Ϣ', '21', '12', 'BRANCH_ID,LOAN_CARD_NO,FINANCING_AGREEMENT_NO,FINANCING_NO,BUSI_DATE,REPAYMENT_COUNT', 'getBranchId,getLoanCardNo,getFinancingAgreementNo,getFinancingNo,getBusiDate,getRepaymentCount', '��Ϣ��', '���ڻ�������,�������,����Э����,����ҵ����,ҵ��������,�������', '14', '2.1', 'CCI_IMP_024');

insert into CCI_FUNCTION_MAPPING (TABLE_NO, TABLE_NAME, FUNC_NAME, BUSI_NAME, RECORD_TYPE, FILE_TYPE, BUSI_KEY, KEY_METHOD, TABLE_TYPE, KEY_NAME, MESSAGE_TYPE, EDITION, IMP_TABLE)
values ('030', 'CCI_LOAN_REPAYMENT', 'CciLoanRepayment', '����ҵ�񻹿���Ϣ', '15', '12', 'BRANCH_ID,LOAN_CARD_NO,LOAN_CONTRACT_NO,RECIEPT_NO,BUSI_DATE,REPAYMENT_COUNT', 'getBranchId,getLoanCardNo,getLoanContractNo,getRecieptNo,getBusiDate,getRepaymentCount', '��Ϣ��', '���ڻ�������,�������,�����ͬ����,��ݱ��,ҵ��������,�������', '11', '2.1', 'CCI_IMP_030');

--56	�����	MBT	20160729
--"��λ��1603 �ɶ����� ANC 80 3-82 ��д�ɶ�/������ҵ�������� M.1703 ������ҵ���� ANC 80 4-83 ��д������ҵ�������� M"     
--�޸�MCCI_ORGINFO_IMPORT_S_H��CCI_ORGINFO_IMPORT_S_H_H ��CCI_ORGINFO_IMPORT_REL_COR��CCI_ORGINFO_IMPORT_REL_COR_H ��BIZ_FIELD_CONFIG 
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY SHAREHOLDER_NAME VARCHAR2(160);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY SHAREHOLDER_NAME VARCHAR2(160);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY RELATION_ENTERPRISE_NAME VARCHAR2(160);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY RELATION_ENTERPRISE_NAME VARCHAR2(160);
update BIZ_FIELD_CONFIG SET LENGTH = '80' where FIELD_NAME = 'relationEnterpriseName';
update BIZ_FIELD_CONFIG SET LENGTH = '80' where FIELD_NAME = 'shareholderName';

--57	³��	MBT	20160729
--"��λ��1603 �ɶ����� ANC 80 3-82 ��д�ɶ�/������ҵ�������� M.1703 ������ҵ���� ANC 80 4-83 ��д������ҵ�������� M"
--�޸�Cci_Imp_041��.Cci_Imp_040��DP_TABLE_DTL��DP_FILE_DTL��DP_FILE 
ALTER TABLE Cci_Imp_041 MODIFY SHAREHOLDER_NAME VARCHAR2(160);
ALTER TABLE cci_Imp_040 MODIFY RELATION_ENTERPRISE_NAME VARCHAR2(160);
update DP_TABLE_DTL t set t.col_len ='160' where t.col_name ='SHAREHOLDER_NAME';
update DP_TABLE_DTL t set t.col_len ='160' where t.col_name ='RELATION_ENTERPRISE_NAME';
update DP_FILE_DTL t set t.field_len ='160' where  t.file_id ='CCI_ORGINFO_IMPORT_REL_COR' and t.field_name ='RELATION_ENTERPRISE_NAME'; 
update DP_FILE_DTL t set t.field_len ='160' where  t.file_id ='CCI_ORGINFO_IMPORT_S_H' and t.field_name ='SHAREHOLDER_NAME';
update DP_FILE t set t.fixed_len_cfg ='1,80,2,20,10,18,10,8,40,11,20,20,1,50,50,100,100,200,200' where  t.file_id ='CCI_ORGINFO_IMPORT_S_H';
update DP_FILE t set t.fixed_len_cfg ='2,80,2,20,10,18,8,40,11,20,20,1,50,50,100,100,200,200' where  t.file_id ='CCI_ORGINFO_IMPORT_REL_COR';


--59	��ԭ	MBT	20160825
--Ԥ���ֶε������޸�

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES1 is 'Ԥ���ֶ�1';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES2 is 'Ԥ���ֶ�2';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES3 is 'Ԥ���ֶ�3';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES4 is 'Ԥ���ֶ�4';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES5 is 'Ԥ���ֶ�5';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL.RES6 is 'Ԥ���ֶ�6';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES1 is 'Ԥ���ֶ�1';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES2 is 'Ԥ���ֶ�2';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES3 is 'Ԥ���ֶ�3';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES4 is 'Ԥ���ֶ�4';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES5 is 'Ԥ���ֶ�5';

COMMENT ON COLUMN CCI_REPORT_SYSTEM_CTL_H.RES6 is 'Ԥ���ֶ�6';

--61	�����	MBT	20160826
--2.2_1030errorcode�����޸ģ���ӡ�,���֤������ѡ��δ֪,֤����������дnull��

update CCI_ERROR_CODE SET ERROR_DESCRIBE = '��Ȼ�˹ɶ���֤�����ͺ�֤������Ϊ������,���֤������ѡ��δ֪,֤����������дnull' where ERROR_CODE = '1030' and EDITION = '2.2';


--63	��ԭ	MBT	20160901	
--��������Ŀ�����ڱ�

create table CCI_OMISSIVE_DATE
(
  sys_ctl_id VARCHAR2(32) NOT NULL,
  MSG_RECORD_TYPE varchar2(2),
  HIST_DATE varchar2(8),
  STATE_FLAG varchar2(1),
  RES1 VARCHAR2(50),
  RES2 VARCHAR2(50),
  RES3 VARCHAR2(100),
  RES4 VARCHAR2(100),
  RES5 VARCHAR2(200),
  RES6 VARCHAR2(200),
  PRIMARY KEY(sys_ctl_id)
);

-- ADD COMMENTS TO THE TABLE
COMMENT ON TABLE CCI_OMISSIVE_DATE
  IS '����Ŀ�����ڱ�';

-- ADD COMMENTS TO THE COLUMNS
COMMENT ON COLUMN CCI_OMISSIVE_DATE.sys_ctl_id
  IS 'sys_ctl_id';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.MSG_RECORD_TYPE
  IS '��Ϣ��¼����';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.HIST_DATE
  IS '����Ŀ������';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.STATE_FLAG
  IS '״̬��־λ';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES1
  IS '�����ֶ�1';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES2
  IS '�����ֶ�2';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES3
  IS '�����ֶ�3';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES4
  IS '�����ֶ�4';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES5
	IS '�����ֶ�5';
COMMENT ON COLUMN CCI_OMISSIVE_DATE.RES6
	IS '�����ֶ�6';











