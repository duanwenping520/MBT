--69  ³�� MBT 20160912
--DP_IMP_CFG_DTL�޸�
update  DP_IMP_CFG_DTL t set t.field_name = '%UUID%' where t.field_name = '%WORK_DATE%'; 

--70 �߷� MBT 20160912
--�����ϱ����ñ������޸�
update Cci_Report_Data_Item_Config set COLUMN_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '8'  and RECORD_FORM_TYPE = 'B'  and COLUMN_OUTPUT_SEQUENCE = '12'  and COLUMN_SOURCE = 'c';
update Cci_Report_Data_Item_Config set MODEL_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '15'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '16'  and COLUMN_SOURCE = 'c';
update Cci_Report_Data_Item_Config set MODEL_NAME = 'busiNum'
 where FILE_CONFIGURE_CTL_NO = '28'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '14'  and COLUMN_SOURCE = 'c';
update Cci_Report_Data_Item_Config set CHANGEABLE_VALUE = '00000000000000000000'
 where FILE_CONFIGURE_CTL_NO = '35'  and RECORD_FORM_TYPE = 'B'  and COLUMN_OUTPUT_SEQUENCE = '9'  and COLUMN_SOURCE = 'c';
update Cci_Report_Data_Item_Config set MODEL_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '36'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '11'  and COLUMN_SOURCE = 'c';
 update Cci_Report_Data_Item_Config set MODEL_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '37'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '11'  and COLUMN_SOURCE = 'c';
  update Cci_Report_Data_Item_Config set MODEL_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '48'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '11'  and COLUMN_SOURCE = 'c';
  update Cci_Report_Data_Item_Config set MODEL_NAME = ''
 where FILE_CONFIGURE_CTL_NO = '49'  and RECORD_FORM_TYPE = 'C'  and COLUMN_OUTPUT_SEQUENCE = '11'  and COLUMN_SOURCE = 'c';


--71	��ԭ	MBT	20160914
--����ɾ����Ϣ����ͨ��У�飬����codeList
update BIZ_FIELD_CONFIG set valid_rule = 'required,type,length,codeList',
       valid_std  = ',$type,$length,CL_INFORMATION_TYPE'
 where field_id = '194'
   and field_name = 'informationType';
   
--72 ³��   MBT  20160918
--formatֵ����Ϊcodelist�е�id������������ʾcodelistֵ
delete from CCI_DOWNLOAD_CONFIG;

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '006', '��Ҫ��ϵ������', 'getMajorRelationName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '007', '��Ҫ��ϵ��֤������', 'getMajorRelationPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '008', '��Ҫ��ϵ��֤������', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '009', '�����ϵ', 'getFamilyRelationship', 'CL_FAMILY_RALATIONSHIP');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '010', '�����Ա����', 'getFamilyMemberName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '011', '�����Ա֤������', 'getFamilyMemberPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '012', '�����Ա֤������', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '013', '��Ϣ��������', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '004', '�ϼ���������', 'getSuperiorOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '005', '�Ǽ�ע�������', 'getRegistrationCodeTypeE', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '006', '�Ǽ�ע���', 'getRegistrationCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '007', '��֯��������', 'getOrgCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '008', '�������ô���', 'getOrgCreditCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '009', '��Ϣ��������', 'getInformationUpdateDateE', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '004', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '005', '����������', 'getRelationType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '006', '������ҵ����', 'getRelationEnterpriseName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '007', '�Ǽ�ע�������', 'getRegistrationCodeType', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '008', '�Ǽ�ע�����', 'getRegistrationCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '009', '��֯��������', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '010', '�������ô���', 'getOrgCreditCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '011', '��Ϣ��������', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '004', '������������', 'getOrgCnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '005', '����Ӣ������', 'getOrgEnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '006', 'ע�ᣨ�Ǽǣ���ַ', 'getRegistationAddress', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '007', '����', 'getNationnality', 'CL_NATIONALITY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '008', 'ע�ᣨ�Ǽǣ�����������', 'getRegistationAreaDivision', 'CL_AREA_PROVINCE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '009', '��������', 'getEstablishDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '010', '֤�鵽����', 'getPaperExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '011', '��Ӫ��ҵ�񣩷�Χ', 'getOperatingRange', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '012', 'ע���ʱ�����', 'getRegisteredCapitalCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '013', 'ע���ʱ�����Ԫ��', 'getRegisteredAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '014', '��֯�������', 'getOrgType', 'CL_ORG_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '015', '��֯�������ϸ��', 'getOrgTypeClassify', 'CL_ORG_TYPE_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '016', '������ҵ����', 'getEconomicClassify', 'CL_ECONOMIC_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '017', '��������', 'getEconomicType', 'CL_ECONOMIC_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '018', '��Ϣ��������', 'getInformationUpdateDateB', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '003', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '004', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '005', '�����д���', 'getManagementRowCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '006', '�ͻ�����', 'getCustomerType', 'CL_CUSTOMER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '007', '�������ô���', 'getOrgCreditCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '008', '��֯��������', 'getOrgCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '009', '�Ǽ�ע�������', 'getRegistrationCodeTypeA', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '010', '�Ǽ�ע�����', 'getRegistrationCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '011', '��˰��ʶ��ţ���˰��', 'getTaxIdentifyCodeNa', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '012', '��˰��ʶ��ţ���˰��', 'getTaxIdentifyCodeSt', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '013', '�������֤��׼��', 'getOpenAccountApprovalNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '014', '������ȡ����', 'getDataAbstractDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '004', '������״̬', 'getBasicStatus', 'CL_BASIC_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '005', '��ҵ��ģ', 'getEnterpriseScale', 'CL_ENTERPRISE_SCALE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '006', '����״̬', 'getOrgStatus', 'CL_ORG_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '007', '��Ϣ��������', 'getInformationUpdateDateD', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '004', '����״̬�칫����������Ӫ����ַ', 'getOrgWorkAddress', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '005', '��ϵ�绰', 'getTelephone', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '006', '������ϵ�绰', 'getFinanceDepartmentTelephone', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '007', '��Ϣ��������', 'getInformationUpdateDateC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '004', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '005', '�ɶ�����', 'getShareholderType', 'CL_SHAREHOLDER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '006', '�ɶ�����', 'getShareholderName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '007', '֤������/�Ǽ�ע�������', 'getPaperType', 'CL_PAPER_TYPE;CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '008', '֤������/�Ǽ�ע�����', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '009', '��֯��������', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '010', '�������ô���', 'getOrgCreditCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '011', '�ֹɱ���', 'getShareholdingRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '012', '��Ϣ��������', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '004', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '005', '��ϵ������', 'getRelationPartyType', 'CL_RELATION_PARTY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '006', '����', 'getName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '007', '֤������', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '008', '֤������', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '009', '��Ϣ��������', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '011', '��Ӫҵ������', 'getMainBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '012', '��Ӫҵ��������ڲ�Ʒ��������', 'getMainBusiIncomeExport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '013', '��Ӫҵ��������ڲ�Ʒ��������', 'getMainBusiIncomeImport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '014', '�ۿ������', 'getDiscountRemoval', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '015', '��Ӫҵ�����뾻��', 'getMainBusiIncomeNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '016', '��Ӫҵ��ɱ�', 'getMainBusiCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '017', '��Ӫҵ��ɱ����ڲ�Ʒ���۳ɱ�', 'getMainBusiCostExport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '018', '��Ӫҵ��˰�𼰸���', 'getMainBusiTaxAdd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '019', '��Ӫ����', 'getOperatingExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '020', '����1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '021', '��������', 'getDeferredRevenue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '022', '������������', 'getPurchasingAgencyRevenue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '023', '����2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '024', '��Ӫҵ������', 'getMainBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '025', '����ҵ������', 'getOtherBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '026', 'Ӫҵ����', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '027', '�������', 'getManageExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '028', '�������', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '029', '����3', 'getOther3', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '030', 'Ӫҵ����', 'getBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '031', 'Ͷ������', 'getInvestIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '032', '�ڻ�����', 'getFuturesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '033', '��������', 'getSubsidiesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '034', '�������벹��ǰ�������ҵ��������', 'getPreSubsidiesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '035', 'Ӫҵ������', 'getBesideBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '036', 'Ӫҵ�����봦�ù̶��ʲ�������', 'getBesideFixedAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '037', 'Ӫҵ������ǻ����Խ�������', 'getBesideNonmonetaryNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '038', 'Ӫҵ��������������ʲ�����', 'getBesideIntangibleAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '039', 'Ӫҵ�����뷣�����', 'getBesideFineNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '040', '����4', 'getOther4', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '041', '��������ǰ��Ⱥ������ʽ����ֲ�����', 'getWageSavingProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '042', 'Ӫҵ��֧��', 'getBesideBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '043', 'Ӫҵ��֧�����ù̶��ʲ�����ʧ', 'getBesideFixedAssetsLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '044', 'Ӫҵ��֧��ծ��������ʧ', 'getBesideDebtRestructuringLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '045', 'Ӫҵ��֧������֧��', 'getBesideFineExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '046', 'Ӫҵ��֧������֧��', 'getBesideDonateExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '047', '����֧��', 'getOtherLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '048', '����֧����ת�ĺ������ʰ��ɽ���', 'getOtherExpenseBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '049', '�����ܶ�', 'getTotalProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '050', '����˰', 'getIncomeTax', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '051', '�����ɶ�����', 'getShareholdersProfitOrLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '052', 'δȷ�ϵ�Ͷ����ʧ', 'getUnrecognizedInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '053', '������', 'getNetProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '054', '���δ��������', 'getUndistributedProfitBegin', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '055', 'ӯ�๫������', 'getSurpReseLossSupp', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '056', '������������', 'getOtherAdjustmentFactor', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '057', '�ɹ����������', 'getProfitAbleToDistribute', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '058', '�������õ�����', 'getSingleRetainedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '059', '���������ʱ�', 'getSupplementalLiquidity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '060', '��ȡ����ӯ�๫��', 'getExtrStatSurpRese', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '061', '��ȡ���������', 'getExtractStatutoryWelfare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '062', '��ȡְ����������������', 'getExtractRewardWelfareFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '063', '��ȡ��������', 'getExtractReserveFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '064', '��ȡ��ҵ��չ����', 'getExtrEnteDeveFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '065', '����黹Ͷ��', 'getProfitReturnInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '066', '����5', 'getOther5', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '067', '�ɹ�Ͷ���߷��������', 'getProfitForInvestorsAble', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '068', 'Ӧ�����ȹɹ���', 'getPrefStocDiviToPay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '069', '��ȡ����ӯ�๫��', 'getExtractAnySurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '070', 'Ӧ����ͨ�ɹ���', 'getCommonStockDividendsToPay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '071', 'ת���ʱ�����ͨ�ɹ���', 'getCommonStockDividendsSwitch', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '072', '����6', 'getOther6', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '073', 'δ��������', 'getProfitNotDistributed', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '074', 'δ��������Ӧ���Ժ����˰ǰ�����ֲ��Ŀ���', 'getProfitNotDistributedOffset', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '075', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '076', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '077', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '009', '��������', 'getReportType', 'CL_REPORT_TYPE_2');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '011', '������Ʒ���ṩ�����յ����ֽ�', 'getSaleRecievedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '012', '�յ���˰�ѷ���', 'getTaxRepay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '013', '�յ��������뾭Ӫ��йص��ֽ�', 'getRelationCashRecieved', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '014', '��Ӫ��ֽ�����С��', 'getCashInflowsCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '015', '������Ʒ��������֧�����ֽ�', 'getCashPurcAcceLaboPaym', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '016', '֧����ְ���Լ�Ϊְ��֧�����ֽ�', 'getCashPaidToEmployees', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '017', '֧���ĸ���˰��', 'getTaxesPaid', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '018', '֧���������뾭Ӫ��йص��ֽ�', 'getCashPaidRelateToOthers', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '019', '��Ӫ��ֽ�����С��', 'getBusiOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '020', '��Ӫ��������ֽ���������', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '021', '�ջ�Ͷ�����յ����ֽ�', 'getRecycleInvestmentCashInflow', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '022', 'ȡ��Ͷ���������յ����ֽ�', 'getCashReceFromInveInco', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '023', '���ù̶��ʲ������ʲ������������ʲ����ջص��ֽ𾻶�', 'getDispFixeAsseLongTermNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '024', '�յ���������Ͷ�ʻ�йص��ֽ�', 'getCashReceFromOtheInveActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '025', 'Ͷ�ʻ�ֽ�����С��', 'getCashInflFromInveActiCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '026', '�����̶��ʲ������ʲ������������ʲ���֧�����ֽ�', 'getBuildPayedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '027', 'Ͷ����֧�����ֽ�', 'getCashPaidByInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '028', '֧����������Ͷ�ʻ�йص��ֽ�', 'getOtherRelativeInvestmentCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '029', 'Ͷ�ʻ�ֽ�����С��', 'getInvestmentOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '030', 'Ͷ�ʻ�������ֽ���������', 'getInveGeneCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '031', '����Ͷ�����յ����ֽ�', 'getCashReceAbsoInve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '032', '������յ����ֽ�', 'getCashReceivedByBorrower', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '033', '�յ�����������ʻ�йص��ֽ�', 'getCashReceFromOtheFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '034', '���ʻ�ֽ�����С��', 'getCashInflFromFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '035', '����ծ����֧�����ֽ�', 'getPaidInCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '036', '�����������򳥸���Ϣ��֧�����ֽ�', 'getCashPaidForDivition', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '037', '֧������������ʻ�йص��ֽ�', 'getCashPaymRelaToOtheActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '038', '���ʻ�ֽ�����С��', 'getCashOutfForFinaActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '039', '�Ｏ��������ֽ���������', 'getNetCashFlowGeneFromActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '040', '���ʱ䶯���ֽ��Ӱ��', 'getImpaOfExchRateOnCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '066', '�ֽ��ֽ�ȼ��ﾻ���Ӷ�', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '042', '������', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '043', '������ʲ���ֵ׼��', 'getImpairmentOfAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '044', '�̶��ʲ����', 'getDemolitionOfFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '045', '�����ʲ�̯��', 'getAmorOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '046', '���ڴ�̯����̯��', 'getAmorOfLongTermPrepExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '047', '��̯���ü���', 'getPrepaidExpensesDecrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '048', 'Ԥ���������', 'getAccruedExpensesIncrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '049', '���ù̶��ʲ������ʲ������������ʲ�����ʧ', 'getFixeIntaAsseDispoLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '050', '�̶��ʲ�������ʧ', 'getLossOfFixedAssetsReject', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '051', '�������', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '052', 'Ͷ����ʧ', 'getInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '053', '����˰�����', 'getDeferredTaxCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '054', '����ļ���', 'getReductionInInventory', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '055', '��Ӫ��Ӧ����Ŀ�ļ���', 'getReduOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '056', '��Ӫ��Ӧ����Ŀ������', 'getIncrOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '057', '����1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '058', 'ծ��תΪ�ʱ�', 'getDebtToCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '059', 'һ���ڵ��ڵĿ�ת����˾ծȯ', 'getConvertibleBondInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '060', '��������̶��ʲ�', 'getFinancingLeaseFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '061', '����2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '062', '�ֽ����ĩ���', 'getCashTermEndBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '063', '�ֽ���ڳ����', 'getCashTermStartBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '064', '�ֽ�ȼ������ĩ���', 'getCashEquiTermEndBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '065', '�ֽ�ȼ�����ڳ����', 'getCashEquiTermStarBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '066', '�ֽ��ֽ�ȼ��ﾻ���Ӷ�', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '067', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '068', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '069', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '011', '�����ʽ�', 'getCurrencyCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '012', '����Ͷ��', 'getShortTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '013', 'Ӧ��Ʊ��', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '014', 'Ӧ�չ���', 'getDividendsReceivable', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '015', 'Ӧ����Ϣ', 'getInterestReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '016', 'Ӧ���˿�', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '017', '����Ӧ�տ�', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '018', 'Ԥ���˿�', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '019', '�ڻ���֤��', 'getFuturesMargin', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '020', 'Ӧ�ղ�����', 'getSubsidiesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '021', 'Ӧ�ճ�����˰', 'getExportTaxRebateReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '022', '���', 'getStock', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '023', '���ԭ����', 'getInventoryRawMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '024', '�������Ʒ', 'getStockProducts', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '025', '��̯����', 'getPrepaidExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '026', '�����������ʲ�����ʧ', 'getNetLossTreaWithCurrAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '027', 'һ���ڵ��ڵĳ���ծȨͶ��', 'getLongTermDebtInveInAYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '028', '���������ʲ�', 'getOtherFlowCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '029', '�����ʲ��ϼ�', 'getFlowCapitalInTotal', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '030', '����Ͷ��', 'getLongTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '031', '���ڹ�ȨͶ��', 'getLongTermEquityInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '032', '����ծȨͶ��', 'getLongTermDebtInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '033', '�ϲ��۲�', 'getCombinedPriceDifference', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '034', '����Ͷ�ʺϼ�', 'getTotalLongTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '035', '�̶��ʲ�ԭ��', 'getFixedAssetsPrice', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '036', '�ۼ��۾�', 'getAccumulatedDepreciation', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '037', '�̶��ʲ���ֵ', 'getFixedAssetsValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '038', '�̶��ʲ�ֵ��ֵ׼��', 'getFixedAssetDeprPrep', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '039', '�̶��ʲ�����', 'getFixedAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '040', '�̶��ʲ�����', 'getFixedAssetClear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '041', '��������', 'getEngineeringMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '042', '�ڽ�����', 'getUnderConstruction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '043', '������̶��ʲ�����ʧ', 'getNetLossOfFixedAsseToTrea', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '044', '�̶��ʲ��ϼ�', 'getTotalFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '045', '�����ʲ�', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '046', '�����ʲ�����ʹ��Ȩ', 'getLandUseRighOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '047', '�����ʲ�', 'getDeferredAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '048', '�����ʲ��̶��ʲ�����', 'getDefeAsseFixeAsseRepa', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '049', '�����ʲ��̶��ʲ�����֧��', 'getCapiImprExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '050', '���������ʲ�', 'getOtherLongTermAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '051', '���������ʲ���׼��������', 'getOtherSpecialMaterialReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '052', '���μ������ʲ��ϼ�', 'getTotalIntaAndOtheAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '053', '����˰�����', 'getDeferredTaxDebit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '054', '�ʲ��ܼ�', 'getTotalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '055', '���ڽ��', 'getShortTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '056', 'Ӧ��Ʊ��', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '057', 'Ӧ���˿�', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '058', 'Ԥ���˿�', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '059', 'Ӧ������', 'getWagePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '060', 'Ӧ��������', 'getWelfarePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '061', 'Ӧ������', 'getProfitPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '062', 'Ӧ��˰��', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '063', '����Ӧ����', 'getOtherPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '064', '����Ӧ����', 'getOtherPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '065', 'Ԥ�����', 'getAccruedExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '066', 'Ԥ�Ƹ�ծ', 'getExpectedLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '067', 'һ���ڵ��ڵĳ��ڸ�ծ', 'getLongTermLiabilityInAYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '068', '����������ծ', 'getOtherCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '069', '������ծ�ϼ�', 'getTotalCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '070', '���ڽ��', 'getLongTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '071', 'Ӧ��ծȯ', 'getBondsPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '072', '����Ӧ����', 'getLongTermAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '073', 'ר��Ӧ����', 'getSpecialPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '074', '�������ڸ�ծ', 'getOtherLongTermLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '075', '�������ڸ�ծ��׼��������', 'getOtheLongTermLiabSpecReve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '076', '���ڸ�ծ�ϼ�', 'getTotalLongTermLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '077', '����˰�����', 'getDeferredTaxCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '078', '��ծ�ϼ�', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '079', '�����ɶ�Ȩ��', 'getMinorityShareholdersRights', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '080', 'ʵ���ʱ�', 'getRealIncomeCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '081', '�����ʱ�', 'getNationalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '082', '�����ʱ�', 'getCollectiveCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '083', '�����ʱ�', 'getLegalPersonCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '084', '�����ʱ����з����ʱ�', 'getNationalLegalPersonCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '085', '�����ʱ����巨���ʱ�', 'getCollLegaPersCapi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '086', '�����ʱ�', 'getPersonalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '087', '�����ʱ�', 'getForeignCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '088', '�ʱ�����', 'getCapitalReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '089', 'ӯ�๫��', 'getSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '090', 'ӯ�๫������ӯ�๫��', 'getLegalSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '091', 'ӯ�๫�������', 'getSurpResePublWelfFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '092', 'ӯ�๫�����������ʱ�', 'getSurpReseCurrCapi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '093', 'δȷ�ϵ�Ͷ����ʧ', 'getUnrecognizedInvestmentLosses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '094', 'δ��������', 'getNondistributedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '095', '��ұ���������', 'getDiffOfForeCurrStat', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '096', '������Ȩ��ϼ�', 'getTotalOwnersEquity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '097', '��ծ��������Ȩ���ܼ�', 'getTotaLiabAndOwneEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '098', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '099', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '100', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '011', 'Ӫҵ����', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '012', 'Ӫҵ�ɱ�', 'getBusiCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '013', 'Ӫҵ˰�𼰸���', 'getBusiTaxAdd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '014', '���۷���', 'getSaleExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '015', '�������', 'getManageExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '016', '�������', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '017', '�ʲ���ֵ��ʧ', 'getAssetReductionLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '018', '���ʼ�ֵ�䶯������', 'getNetIncomeOfFairValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '019', 'Ͷ�ʾ�����', 'getInvestmentNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '020', '����Ӫ��ҵ�ͺ�Ӫ��ҵ��Ͷ������', 'getInveReveToEnte', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '021', 'Ӫҵ����', 'getBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '022', 'Ӫҵ������', 'getBesideBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '023', 'Ӫҵ��֧��', 'getBesideBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '024', '�������ʲ���ʧ', 'getLossOfNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '025', '�����ܶ�', 'getTotalProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '026', '����˰����', 'getIncomeTaxExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '027', '������', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '028', '����ÿ������', 'getBasicEarningsPerShare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '029', 'ϡ��ÿ������', 'getDilutedEarningsPerShare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '030', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '031', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '032', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '009', '��������', 'getReportType', 'CL_REPORT_TYPE_2');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '011', '������Ʒ���ṩ�����յ����ֽ�', 'getSaleRecievedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '012', '�յ���˰�ѷ���', 'getTaxRepay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '013', '�յ������뾭Ӫ��йص��ֽ�', 'getRelationCashRecieved', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '014', '��Ӫ��ֽ�����С��', 'getCashInflowsCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '015', '������Ʒ��������֧�����ֽ�', 'getCashPurcAcceLaboPaym', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '016', '֧����ְ���Լ�Ϊְ��֧�����ֽ�', 'getCashPaidToEmployees', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '017', '֧���ĸ���˰��', 'getTaxesPaid', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '018', '֧�������뾭Ӫ��йص��ֽ�', 'getCashPaidRelateToOthers', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '019', '��Ӫ��ֽ�����С��', 'getBusiOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '064', '��Ӫ��������ֽ���������', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '021', '�ջ�Ͷ�����յ����ֽ�', 'getRecycleInvestmentCashInflow', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '022', 'ȡ��Ͷ���������յ����ֽ�', 'getCashReceFromInveInco', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '023', '���ù̶��ʲ������ʲ������������ʲ����ջص��ֽ𾻶�', 'getDisposalFixedAssetNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '024', '�����ӹ�˾������Ӫҵ��λ�յ����ֽ𾻶�', 'getDisposalSubsidiaryAssetNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '025', '�յ�������Ͷ�ʻ�йص��ֽ�', 'getCashReceOtheInveActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '026', 'Ͷ�ʻ�ֽ�����С��', 'getCashInflFromInveActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '027', '�����̶��ʲ������ʲ������������ʲ���֧�����ֽ�', 'getBuildPayedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '028', 'Ͷ����֧�����ֽ�', 'getCashPaidByInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '029', 'ȡ���ӹ�˾������Ӫҵ��λ֧�����ֽ𾻶�', 'getNetCashFromSubsOtheBusi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '030', '֧��������Ͷ�ʻ�йص��ֽ�', 'getOtherRelativeInvestmentCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '031', 'Ͷ�ʻ�ֽ�����С��', 'getInvestmentOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '032', 'Ͷ�ʻ�������ֽ���������', 'getInveGeneCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '033', '����Ͷ���յ����ֽ�', 'getCashReceAbsoInve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '034', 'ȡ�ý���յ����ֽ�', 'getCashReceivedByBorrower', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '035', '�յ���������ʻ�йص��ֽ�', 'getCashReceFromOtheFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '036', '���ʻ�ֽ�����С��', 'getCashInflFromFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '037', '����ծ����֧�����ֽ�', 'getPaidInCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '038', '�����������򳥸���Ϣ��֧�����ֽ�', 'getCashPaidForDivition', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '039', '֧����������ʻ�йص��ֽ�', 'getCashPaymRelaToOtheActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '040', '���ʻ�ֽ�����С��', 'getCashOutfForFinaActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '041', '�Ｏ��������ֽ���������', 'getNetCashFlowGeneFromActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '042', '���ʱ䶯���ֽ��ֽ�ȼ����Ӱ��', 'getImpaOfExchRateOnCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '043', '�ֽ��ֽ�ȼ��ﾻ���Ӷ���', 'getNetIncreaseInCashC', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '044', '��ĩ�ֽ��ֽ�ȼ��������', 'getCashEquiTermBalaEnd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '045', '�ڳ��ֽ��ֽ�ȼ������', 'getCashEquiTermBalaStar', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '046', '������', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '047', '�ʲ���ֵ׼��', 'getImpairmentOfAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '048', '�̶��ʲ��۾������ʲ��ۺ������������ʲ��۾�', 'getDemolitionOfFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '049', '�����ʲ�̯��', 'getAmorOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '050', '���ڴ�̯����̯��', 'getAmorOfLongTermPreExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '051', '��̯���ü���', 'getPrepaidExpensesDecrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '052', 'Ԥ���������', 'getAccruedExpensesIncrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '053', '���ù̶��ʲ������ʲ������������ʲ�����ʧ', 'getFixeIntaAsseDispoLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '054', '�̶��ʲ�������ʧ', 'getLossOfFixedAssetsReject', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '055', '���ʼ�ֵ�䶯��ʧ', 'getLossOfFairValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '056', '�������', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '057', 'Ͷ����ʧ', 'getInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '058', '��������˰�ʲ�����', 'getDeferredTaxAssetsReduction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '059', '��������˰��ծ����', 'getDefeTaxLiabIncr', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '060', '����ļ���', 'getReductionInInventory', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '061', '��Ӫ��Ӧ����Ŀ�ļ���', 'getReduOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '062', '��Ӫ��Ӧ����Ŀ������', 'getIncrOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '063', '����1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '064', '��Ӫ��������ֽ���������', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '065', 'ծ��תΪ�ʱ�', 'getDebtToCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '066', 'һ���ڵ��ڵĿ�ת����˾ծȯ', 'getConvertibleBondInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '067', '��������̶��ʲ�', 'getFinancingLeaseFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '068', '����2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '069', '�ֽ����ĩ���', 'getCashTermEndBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '070', '�ֽ���ڳ����', 'getCashTermStartBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '071', '�ֽ�ȼ������ĩ���', 'getCashEquiTermEndBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '072', '�ֽ�ȼ�����ڳ����', 'getCashEquiTermStarBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '073', '�ֽ��ֽ�ȼ��ﾻ���Ӷ�', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '074', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '075', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '076', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '011', '�����ʽ�', 'getCurrencyCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '012', '�����Խ����ʲ�', 'getTradingFinancialAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '013', 'Ӧ��Ʊ��', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '014', 'Ӧ���˿�', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '015', 'Ԥ���˿�', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '016', 'Ӧ����Ϣ', 'getInterestReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '017', 'Ӧ�չ���', 'getDividendsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '018', '����Ӧ�տ�', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '019', '���', 'getStock', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '020', 'һ���ڵ��ڵķ������ʲ�', 'getNoncurrencyAssetsInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '021', '���������ʲ�', 'getOtherFlowCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '022', '�����ʲ��ϼ�', 'getFlowCapitalInTotal', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '023', '�ɹ����۵Ľ����ʲ�', 'getFinaAsseAvaiForSale', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '024', '����������Ͷ��', 'getInvestmentHoldToMaturity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '025', '���ڹ�ȨͶ��', 'getLongTermEquityInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '026', '����Ӧ�տ�', 'getLongTermAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '027', 'Ͷ���Է��ز�', 'getInvestmentRealEstate', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '028', '�̶��ʲ�', 'getFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '029', '�ڽ�����', 'getUnderConstruction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '030', '��������', 'getEngineeringMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '031', '�̶��ʲ�����', 'getFixedAssetClear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '032', '�����������ʲ�', 'getProductiveBiologicalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '033', '�����ʲ�', 'getOilAndGasAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '034', '�����ʲ�', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '035', '����֧��', 'getDevelopmentExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '036', '����', 'getGoodwill', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '037', '���ڴ�̯����', 'getLongTermPrepaidExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '038', '��������˰�ʲ�', 'getDeferredIncomeTaxAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '039', '�����������ʲ�', 'getOtherNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '040', '�������ʲ��ϼ�', 'getTotalNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '041', '�ʲ��ܼ�', 'getTotalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '042', '���ڽ��', 'getShortTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '043', '�����Խ��ڸ�ծ', 'getTradingFinancialLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '044', 'Ӧ��Ʊ��', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '045', 'Ӧ���˿�', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '046', 'Ԥ���˿�', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '047', 'Ӧ����Ϣ', 'getInterestsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '048', 'Ӧ��ְ��н��', 'getWagePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '049', 'Ӧ��˰��', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '050', 'Ӧ������', 'getDividendPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '051', '����Ӧ����', 'getOtherPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '052', 'һ���ڵ��ڵķ�������ծ', 'getNoncLiabInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '053', '����������ծ', 'getOtherCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '054', '������ծ�ϼ�', 'getTotalCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '055', '���ڽ��', 'getLongTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '056', 'Ӧ��ծȯ', 'getBondsPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '057', '����Ӧ����', 'getLongTermAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '058', 'ר��Ӧ����', 'getSpecialPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '059', 'Ԥ�Ƹ�ծ', 'getExpectedLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '060', '��������˰��ծ', 'getDeferredTaxCreditLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '061', '������������ծ', 'getOtherNoncurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '062', '��������ծ�ϼ�', 'getTotalNoncurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '063', '��ծ�ϼ�', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '064', 'ʵ���ʱ�����ɱ���', 'getRealIncomeCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '065', '�ʱ�����', 'getCapitalReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '066', '������', 'getInventoryReductionUnit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '067', 'ӯ�๫��', 'getSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '068', 'δ��������', 'getNondistributedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '069', '������Ȩ��ϼ�', 'getTotalOwnersEquity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '070', '��ծ��������Ȩ��ϼ�', 'getTotaLiabAndOwneEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '071', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '072', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '073', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '011', '������������', 'getFinancialSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '012', '�ϼ���������', 'getSuperiorSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '013', '������λ�ɿ�', 'getSubunitPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '014', '��ҵ����', 'getCareerIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '015', 'Ԥ�����ʽ�����', 'getExtraBudgetaryCapitalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '016', '��������', 'getOtherIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '017', '��ҵ����С��', 'getCareerIncomeCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '018', '��Ӫ����', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '019', '��Ӫ����С��', 'getBusiIncomeCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '020', '����ר��', 'getDailSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '021', '����ר��С��', 'getDailSpecialFundCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '022', '�����ܼ�', 'getTotalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '023', '��������', 'getAllocateFunds', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '024', '�Ͻ��ϼ�֧��', 'getPaidUpperExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '025', '�Ը�����λ����', 'getSubsidiarySubunit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '026', '��ҵ֧��', 'getCareerExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '027', '��������֧��', 'getFinancialSubsidyExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '028', 'Ԥ�����ʽ�֧��', 'getExtrBudgCapiExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '048', '����˰��', 'getSalesTax2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '030', '��ת�Գ����', 'getSelfFinancingInfrastructure', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '031', '��ҵ֧��С��', 'getCareerExpenseCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '032', '��Ӫ֧��', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '033', '��Ӫ֧��С��', 'getBusiExpenseCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '034', '����ר��', 'getAllocateSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '035', 'ר��֧��', 'getSpecialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '036', 'ר��С��', 'getSpecialCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '037', '֧���ܼ�', 'getTotalExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '038', '��ҵ����', 'getCareerBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '039', '�����������', 'getNormalIncomeBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '040', '�ջ���ǰ�����ҵ֧��', 'getRecoverBeforeBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '041', '��Ӫ����', 'getBusiBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '042', '��ǰ��Ⱦ�Ӫ����', 'getPreviousAnnualBusiLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '043', '�������', 'getBalanceDistribution', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '044', 'Ӧ������˰', 'getIncomeTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '045', '��ȡר�û���', 'getExtractSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '046', 'ת����ҵ����', 'getTurnIntoCareerFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '047', '�����������', 'getOtherBalanceDistribution', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '048', '����˰��', 'getSalesTax2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '049', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '050', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '051', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '008', '�������', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '009', '��������', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '010', '��������ϸ��', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '011', '�ֽ�', 'getCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '012', '���д��', 'getBankDeposit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '013', 'Ӧ��Ʊ��', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '014', 'Ӧ���˿�', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '015', 'Ԥ���˿�', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '016', '����Ӧ�տ�', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '017', '����', 'getMaterial', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '018', '����Ʒ', 'getFinishedProduct', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '019', '����Ͷ��', 'getOutboundInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '020', '�̶��ʲ�', 'getFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '021', '�����ʲ�', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '022', '�ʲ��ϼ�', 'getTotalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '023', '��������', 'getAllocateFunds', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '024', '����ר��', 'getAllocateSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '025', 'ר��֧��', 'getSpecialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '026', '��ҵ֧��', 'getCareerExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '027', '��Ӫ֧��', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '028', '�ɱ�����', 'getCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '029', '����˰��', 'getSalesTax', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '030', '�Ͻ��ϼ�֧��', 'getPaidUpperExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '031', '�Ը�����λ����', 'getSubsidiarySubunit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '032', '��ת�Գ����', 'getSelfFinancingInfrastructure', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '033', '֧���ϼ�', 'getTotalExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '034', '�ʲ������ܼ�', 'getTotalDepartClassAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '035', '��ǿ���', 'getDebitFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '036', 'Ӧ��Ʊ��', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '037', 'Ӧ���˿�', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '038', 'Ԥ���˿�', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '039', '����Ӧ����', 'getOtherPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '040', 'Ӧ��Ԥ���', 'getBudgetFundPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '041', 'Ӧ�ɲ���ר����', 'getFinancialSpecialFundPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '042', 'Ӧ��˰��', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '043', '��ծ�ϼ�', 'getTotalLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '044', '��ҵ����', 'getCareerFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '045', 'һ�����', 'getNormalFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '046', 'Ͷ�ʻ���', 'getInvestmentFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '047', '�̶�����', 'getFixedFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '048', 'ר�û���', 'getSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '049', '��ҵ����', 'getCareerBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '050', '��Ӫ����', 'getBusiBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '051', '���ʲ��ϼ�', 'getTotalNetAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '052', '������������', 'getFinancialSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '053', '�ϼ���������', 'getSuperiorSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '054', '����ר��', 'getDailSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '055', '��ҵ����', 'getCareerIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '056', '��Ӫ����', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '057', '������λ�ɿ�', 'getSubunitPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '058', '��������', 'getOtherIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '059', '����ϼ�', 'getTotalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '060', '��ծ�����ܼ�', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '061', '�������������', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '062', '�����Ա����', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '063', '���ʱ��', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '008', '������Ϣ��¼��ˮ��', 'getImportantRecordFlow', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '009', '��������', 'getImportantDescription', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '008', '�����߼�¼��ˮ��', 'getProsecutionRecordFlow', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '009', '����������', 'getProsecutorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '010', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '011', '�о�ִ�н��', 'getDecisionExecutionAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '012', '�о�ִ������', 'getDecisionExecutionDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '013', 'ִ�н��', 'getExecutionResult', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '014', '������ԭ��', 'getProsecutionReason', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '008', '��֯��������', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '009', '����ע��ǼǺ�', 'getRegistrationNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '010', 'ҵ����', 'getBusiNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '011', '���', 'getBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '012', '��������', 'getDisposalDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '013', '��Ҫ�ʲ����÷�ʽ', 'getMajorAssetDisposal', 'CL_MAINASSETS_DISPOSAL');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '014', '�ѻ��ս��', 'getRecycledAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '008', '��������', 'getIndemnityCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '010', '��������', 'getIndemnityType', 'CL_INDEMNITY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '011', '����״̬', 'getIndemnityState', 'CL_INDEMNITY_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '012', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '013', '�������', 'getAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '014', '������������', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '015', '����������', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '016', '��֤�����', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '017', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '018', '����־', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '019', '�������', 'getBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '020', '��������', 'getBalanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '021', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '008', '����Э����', 'getFactoringAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '010', '�����Ʒ����', 'getProductType', 'CL_PRODUCT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '011', '����ҵ��״̬', 'getBusiState', 'CL_BUSI_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '012', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '013', '�������', 'getContinueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '014', '��������', 'getContinueDate', 'dtae');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '015', '�������', 'getContinueBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '016', '���仯����', 'getContinueChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '017', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '018', '����־', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '019', '�ļ�����', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '020', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '010', '��֤��ͬ���', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '011', '��֤������', 'getGuaranteeName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '012', '��֤�˴������', 'getGuaranteeLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '013', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '014', '��֤���', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '015', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '016', '��֤������ʽ', 'getGuaranteeType', 'CL_GUARANTEE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '017', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '008', '����֤��', 'getLetterOfCreditNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '010', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '011', '��֤���', 'getIssueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '012', '��֤����', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '013', '����֤��Ч��', 'getValidityPeriod', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '014', '����֤��������', 'getPaymentTerm', 'CL_PAYMENT_TERM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '015', '��֤�����', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '016', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '017', '����־', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '018', '����֤״̬', 'getLetterOfCreditStatus', 'CL_LETTER_OF_CREDIT_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '019', '����֤ע������', 'getCancellationDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '020', '����֤���', 'getLetterOfCreditBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '021', '��������', 'getBalanceReportDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '022', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '008', '���ҵ�����', 'getAdvanceBusinessNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '009', '�������', 'getAdvanceType', 'CL_ADVANCE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '010', 'ԭҵ���', 'getOriginBusiNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '011', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '012', '�����', 'getAdvanceAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '013', '�������', 'getAdvanceDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '014', '������', 'getAdvanceBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '015', '��������', 'getAdvanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '016', '���ʽ', 'getAdvanceForm', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '017', '�ļ�����', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '018', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '010', '��Ѻ��ͬ���', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '011', '��Ѻ���', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '012', '��Ѻ������', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '013', '��Ѻ�˴������', 'getMortgagerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '014', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '015', '��Ѻ��������ֵ', 'getMortgageAssessValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '016', '��������', 'getAssessDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '017', '������������', 'getAssessOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '018', '����������֯��������', 'getAssessOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '019', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '020', '��Ѻ������', 'getMortgageType', 'CL_MORTGAGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '021', '��Ѻ�����', 'getMortgageCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '022', '��Ѻ���', 'getMortgageAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '023', '�Ǽǻ���', 'getIssueOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '024', '�Ǽ�����', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '025', '��Ѻ��˵��', 'getMortgageInstruction', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '026', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '008', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '009', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '010', '���Ŷ��', 'getLoanCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '011', '������Ч��ʼ����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '012', '������ֹ����', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '013', '���Ŷ��ע����Ч����', 'getLoanCreditStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '014', '���Ŷ��ע��ԭ��', 'getLoanCreditCancelReason', 'CL_LOAN_CREDIT_CANCEL_REASON');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '008', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '009', 'ǷϢ���', 'getOweInterestBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '010', 'ǷϢ����', 'getOweInterestType', 'CL_OWE_INTEREST_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '011', 'ǷϢ���ı�����', 'getOweInterestChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '008', 'Ʊ���ڲ����', 'getBillInternalNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '010', 'Ʊ������', 'getBillType', 'CL_BILL_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '011', '��������������', 'getDiscountApplicantName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '012', '���������˴������', 'getDiscApplLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '013', '�ж���/������', 'getAcceptorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '014', '�ж���/�д������', 'getAcceptorLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '015', '��֯��������', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '016', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '017', '���ֽ��', 'getDiscountAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '018', '������', 'getDiscountDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '019', '�жҵ�����', 'getAcceptExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '020', 'Ʊ����', 'getBillAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '021', 'Ʊ��״̬', 'getBillStatus', 'CL_BILL_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '022', '�ļ�����', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '023', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '004', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '005', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '010', '��֤��ͬ���', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '011', '��֤������', 'getGuaranteerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '012', '֤������', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '013', '֤������', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '014', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '015', '��֤���', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '016', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '017', '��֤������ʽ', 'getGuaranteeType', 'CL_GUARANTEE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '018', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '004', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '005', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '010', '��Ѻ��ͬ���', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '011', '��Ѻ���', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '012', '��Ѻ������', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '013', '֤������', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '014', '֤������', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '015', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '016', '��Ѻ��������ֵ', 'getMortgageAssessValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '017', '��������', 'getAssessDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '018', '������������', 'getAssessOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '019', '����������֯��������', 'getAssessOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '020', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '021', '��Ѻ������', 'getMortgageType', 'CL_MORTGAGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '022', '��Ѻ����', 'getMortgageCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '023', '��Ѻ���', 'getMortgageAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '024', '�Ǽǻ���', 'getIssueOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '025', '�Ǽ�����', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '026', '��Ѻ��˵��', 'getMortgageInstruction', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '013', '�������', 'getFinancingBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '014', '����ҵ�񷢷�����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '015', '����ҵ���������', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '016', 'չ�ڱ�־', 'getExtensionFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '017', '�ļ�����', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '018', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '008', '����Э����', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '010', '����Э����Ч����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '011', '����Э����ֹ����', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '012', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '013', 'Э����Ч״̬', 'getAgreementEffiectiveState', 'CL_AGREEMENT_EFFIECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '014', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '015', '����Э����', 'getFinancingAgreementAmount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '016', '����Э�����', 'getFinancingAgreementBalance', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '008', '����Э����', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '009', '����ҵ����', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '010', 'չ�ڴ���', 'getExtensionCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '011', 'չ�ڽ��', 'getExtensionAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '012', 'չ����ʼ����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '013', 'չ�ڵ�������', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '008', '����Э����', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '009', '����ҵ����', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '010', '�������', 'getRepaymentCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '011', '������', 'getRepaymentAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '012', '��������', 'getRepaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '013', '���ʽ', 'getRepaymentType', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '008', '�����ͬ����', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '009', '��ݱ��', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '010', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '011', '�����ݽ��', 'getRecieptAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '012', '���������', 'getRecieptBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '013', '��ݷſ�����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '014', '��ݷſ����', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '015', '����ҵ������', 'getLoanBusiType', 'CL_LOAN_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '016', '������ʽ', 'getLoanForm', 'CL_LOAN_FORM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '017', '��������', 'getLoanProperty', 'CL_LOAN_PROPERTY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '018', '����Ͷ��', 'getLoanOrientation', 'CL_ECONOMIC_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '019', '��������', 'getLoanType', 'CL_LOAN_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '020', 'չ�ڱ�־', 'getExtensionFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '021', '�ļ�����', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '022', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '008', '�����ͬ����', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '009', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '027', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '010', '��Ѻ��ͬ���', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '011', '��Ѻ���', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '012', '����������', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '013', '֤������', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '014', '֤������', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '015', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '016', '��Ѻ���ֵ', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '017', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '018', '��Ѻ������', 'getPledgeType', 'CL_PLEDGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '019', '��Ѻ�����', 'getPledgeCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '020', '��Ѻ���', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '021', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '008', '����Э����', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '009', '����ҵ����', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '010', '����ҵ������', 'getFinancingForm', 'CL_FINANCING_FORM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '011', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '012', '���ʽ��', 'getFinancingAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '010', '�����ͬ��Ч����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '011', '�����ͬ��ֹ����', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '012', '���ű�־', 'getBankGroupFlag', 'CL_BANK_GROUP_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '013', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '014', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '015', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '016', '�����ͬ���', 'getAmount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '017', '�������', 'getBalance', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '008', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '009', '�Ŵ�ҵ������', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '010', '��Ѻ��ͬ���', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '011', '��Ѻ���', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '012', '����������', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '013', '�����˴������', 'getPledgerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '014', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '015', '��Ѻ���ֵ', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '016', '��ͬǩ������', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '017', '��Ѻ������', 'getPledgeType', 'CL_PLEDGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '018', '��Ѻ�����', 'getPledgeCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '019', '��Ѻ���', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '020', '��ͬ��Ч״̬', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '008', '�����ͬ����', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '009', '��ݱ��', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '010', 'չ�ڴ���', 'getExtensionCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '011', 'չ�ڽ��', 'getAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '012', 'չ����ʼ����', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '013', 'չ�ڵ�������', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '008', '�����ͬ����', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '009', '��ݱ��', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '010', '�������', 'getRepaymentCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '011', '��������', 'getRepaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '012', '���ʽ', 'getRepaymentType', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '013', '������', 'getRepaymentAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '006', 'ҵ��������', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '007', '��Ϣ��¼��������', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '008', '�ж�Э�����', 'getAcceptanceAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '009', '��Ʊ����', 'getDraftNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '010', '����Э�����', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '011', '��Ʊ������', 'getDrawerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '012', '����', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '013', '��Ʊ���', 'getDraftAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '014', '��Ʊ�ж���', 'getDraftAcceptanceDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '015', '��Ʊ������', 'getDraftExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '016', '��Ʊ��������', 'getDraftPaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '017', '��֤�����', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '018', '������־', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '019', '����־', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '020', '��Ʊ״̬', 'getDraftStatus', 'CL_DRAFT_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '021', '�弶����', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '002', '�������', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '003', '���������', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '004', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '005', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '006', 'ɾ��ҵ������', 'getDeleteBusiType', 'CL_DELETE_FILE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '007', '����ͬ���', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '004', '��Ҫ��ϵ��֤������', 'getMajorRelationPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '005', '��Ҫ��ϵ��֤������', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '006', '�����ϵ', 'getFamilyRelationship', 'CL_FAMILY_RALATIONSHIP');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '007', '�����Ա֤������', 'getFamilyMemberPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '008', '�����Ա֤������', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '009', '��Ϣ��������', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '001', '�ͻ���', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '002', '���к�', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '003', '���ڻ�������', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '004', '��Ϣ���', 'getInformationType', 'CL_INFORMATION_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '005', '��ϵ������', 'getRelationPartyType', 'CL_RELATION_PARTY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '006', '��Ϣ��������', 'getInformationUpdateDate', 'date');


--73	��ԭ	MBT	20160918	
--����У���ֲ���

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000003', '1', '0001', 1, 2, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_002', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000004', '1', '0001', 1, 3, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_003', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000005', '1', '0001', 1, 4, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_004', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000006', '1', '0001', 1, 5, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_005', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);


--74 �����	MBT	20160918
--���ݿ����ݣ��������ݿ�ͱ��ı��벻һ�£����ݿ�����뺺���ֶ���Ϊ1.5��

--ҵ���
--����������Ϣ_����
ALTER TABLE CCI_ORGINFO_BASIC MODIFY RSV_A VARCHAR2(60);

--����������Ϣ_��������
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY ORG_CN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY ORG_EN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY REGISTATION_ADDRESS VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY OPERATING_RANGE VARCHAR2(600);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY RSV_B VARCHAR2(60);

--����������Ϣ_����״̬
ALTER TABLE CCI_ORGINFO_ORG_STATUS MODIFY RSV_D varchar2(60);

--����������Ϣ_������Ϣ
ALTER TABLE CCI_ORGINFO_CONTACT MODIFY ORG_WORK_ADDRESS varchar2(120);
ALTER TABLE CCI_ORGINFO_CONTACT MODIFY RSV_C varchar2(60);

--�߹ܼ���Ҫ��ϵ����Ϣ
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY RSV_1 varchar2(60);

--��Ҫ�ɶ�
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY SHAREHOLDER_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY RSV_1 varchar2(60);

--��Ҫ������ҵ
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY RELATION_ENTERPRISE_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY REGISTRATION_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY RSV_1 varchar2(60);

--�ϼ����������ܵ�λ����Ϣ
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY SUPERIOR_ORG_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY REGISTRATION_CODE_E varchar2(30);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY RSV_E varchar2(60);

--�����Ա��Ϣ��
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY MAJOR_RELATION_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY BORROWER_NAME varchar2(120);

--������Ϣɾ��
ALTER TABLE CCI_ORGINFO_DELETE MODIFY RSV_1 varchar2(60);

--�����Ա��Ϣɾ��
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY RSV_1 varchar2(60);

--2002���ʲ���ծ��
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY AUDITOR_NAME VARCHAR2(45);

--2002��������������
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY AUDIT_FIRM_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY AUDITOR_NAME varchar2(45);

--2002���ֽ�������
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007���ʲ���ծ��
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007��������������
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007���ֽ�������
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--��ҵ��λ�ʲ���ծ��
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY AUDITOR_NAME VARCHAR2(45);

--��ҵ��λ����֧����
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY AUDITOR_NAME VARCHAR2(45);

--������Ϣ��
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTION_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY EXECUTION_RESULT VARCHAR2(150);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTION_REASON VARCHAR2(450);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY BORROWER_NAME VARCHAR2(120);

--������Ϣ��
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY IMPORTANT_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY IMPORTANT_DESCRIPTION VARCHAR2(375);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY BORROWER_NAME VARCHAR2(120);

--����ҵ���ͬ��Ϣ
ALTER TABLE CCI_CONTRACT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_CONTRACT_INFO MODIFY CREDIT_AGREEMENT_NO varchar2(90);

--����ҵ���ͬ�����Ϣ
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);

--����ҵ������Ϣ
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY BORROWER_NAME varchar2(120);

--����ҵ�񻹿���Ϣ
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY BORROWER_NAME varchar2(120);

--����ҵ��չ����Ϣ
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY BORROWER_NAME varchar2(120);

--����ҵ����Ϣ
ALTER TABLE CCI_FACTORING_BUSI MODIFY FACTORING_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI MODIFY BORROWER_NAME varchar2(120);

--Ʊ������ҵ����Ϣ��
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY BILL_INTERNAL_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY DISCOUNT_APPLICANT_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY ACCEPTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY BORROWER_NAME varchar2(120);

--����Э����Ϣ
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);

--����Э������Ϣ��
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);

--����ҵ����Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY BORROWER_NAME varchar2(120);

--����ҵ�񻹿���Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY BORROWER_NAME varchar2(120);

--����ҵ��չ����Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY BORROWER_NAME varchar2(120);

--����֤ҵ����Ϣ��
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY LETTER_OF_CREDIT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY BORROWER_NAME VARCHAR2(120);

--����ҵ����Ϣ��
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY INDEMNITY_CODE varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY BORROWER_NAME varchar2(120);

--���гжһ�Ʊҵ����Ϣ��
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY ACCEPTANCE_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY DRAWER_NAME VARCHAR2(120);

--����������Ϣ��
ALTER TABLE CCI_PUBLIC_CREDIT_INFO MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO MODIFY BORROWER_NAME varchar2(120);

--��֤��ͬ��Ϣ��
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY GUARANTEE_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);

--��Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGE_INSTRUCTION varchar2(600);

--��Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);

--��Ȼ�˱�֤��ͬ��Ϣ��
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY GUARANTEER_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--��Ȼ�˵�Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--��Ȼ����Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--���ҵ����Ϣ��
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY ADVANCE_BUSINESS_NO varchar2(90);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY ORIGIN_BUSI_NO varchar2(90);

--ǷϢҵ����Ϣ
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO MODIFY BORROWER_NAME varchar2(120);

--�����Ŵ�
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY REGISTRATION_NO VARCHAR2(30);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY BUSI_NO VARCHAR2(90);

--�Ŵ�ҵ������ɾ��������Ϣ��
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ MODIFY MAJOR_CONTRACT_NO VARCHAR2(90);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ MODIFY BORROWER_NAME VARCHAR2(120);


--��ʷ��
--����������Ϣ_����
ALTER TABLE CCI_ORGINFO_BASIC_H MODIFY RSV_A VARCHAR2(60);

--����������Ϣ_��������
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY ORG_CN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY ORG_EN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY REGISTATION_ADDRESS VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY OPERATING_RANGE VARCHAR2(600);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY RSV_B VARCHAR2(60);

--����������Ϣ_����״̬
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H MODIFY RSV_D varchar2(60);

--����������Ϣ_������Ϣ
ALTER TABLE CCI_ORGINFO_CONTACT_H MODIFY ORG_WORK_ADDRESS varchar2(120);
ALTER TABLE CCI_ORGINFO_CONTACT_H MODIFY RSV_C varchar2(60);

--�߹ܼ���Ҫ��ϵ����Ϣ
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY RSV_1 varchar2(60);

--��Ҫ�ɶ�
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY SHAREHOLDER_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY RSV_1 varchar2(60);

--��Ҫ������ҵ
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY RELATION_ENTERPRISE_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY REGISTRATION_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY RSV_1 varchar2(60);

--�ϼ����������ܵ�λ����Ϣ
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY SUPERIOR_ORG_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY REGISTRATION_CODE_E varchar2(30);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY RSV_E varchar2(60);

--�����Ա��Ϣ��
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY MAJOR_RELATION_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY BORROWER_NAME varchar2(120);

--������Ϣɾ��
ALTER TABLE CCI_ORGINFO_DELETE_H MODIFY RSV_1 varchar2(60);

--�����Ա��Ϣɾ��
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY RSV_1 varchar2(60);

--2002���ʲ���ծ��
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2002��������������
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY AUDIT_FIRM_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY AUDITOR_NAME varchar2(45);

--2002���ֽ�������
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007���ʲ���ծ��
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007��������������
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007���ֽ�������
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--��ҵ��λ�ʲ���ծ��
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY AUDITOR_NAME VARCHAR2(45);

--��ҵ��λ����֧����
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY AUDITOR_NAME VARCHAR2(45);

--������Ϣ��
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTION_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY EXECUTION_RESULT VARCHAR2(150);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTION_REASON VARCHAR2(450);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY BORROWER_NAME VARCHAR2(120);

--������Ϣ��
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY IMPORTANT_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY IMPORTANT_DESCRIPTION VARCHAR2(375);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY BORROWER_NAME VARCHAR2(120);

--����ҵ���ͬ��Ϣ
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);

--����ҵ���ͬ�����Ϣ
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);

--����ҵ������Ϣ
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����ҵ�񻹿���Ϣ
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY BORROWER_NAME varchar2(120);

--����ҵ��չ����Ϣ
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����ҵ����Ϣ
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY FACTORING_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY BORROWER_NAME varchar2(120);

--Ʊ������ҵ����Ϣ��
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY BILL_INTERNAL_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY DISCOUNT_APPLICANT_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY ACCEPTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����Э����Ϣ
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);

--����Э������Ϣ��
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);

--����ҵ����Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����ҵ�񻹿���Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����ҵ��չ����Ϣ��
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY BORROWER_NAME varchar2(120);

--����֤ҵ����Ϣ��
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY LETTER_OF_CREDIT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY BORROWER_NAME VARCHAR2(120);

--����ҵ����Ϣ��
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY INDEMNITY_CODE varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY BORROWER_NAME varchar2(120);

--���гжһ�Ʊҵ����Ϣ��
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY ACCEPTANCE_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY DRAWER_NAME VARCHAR2(120);

--����������Ϣ��
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--��֤��ͬ��Ϣ��
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY GUARANTEE_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--��Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGE_INSTRUCTION varchar2(600);

--��Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--��Ȼ�˱�֤��ͬ��Ϣ��
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY GUARANTEER_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--��Ȼ�˵�Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--��Ȼ����Ѻ��ͬ��Ϣ��
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--���ҵ����Ϣ��
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY ADVANCE_BUSINESS_NO varchar2(90);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY ORIGIN_BUSI_NO varchar2(90);

--ǷϢҵ����Ϣ
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H MODIFY BORROWER_NAME varchar2(120);

--�����Ŵ�
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY REGISTRATION_NO VARCHAR2(30);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY BUSI_NO VARCHAR2(90);

--�Ŵ�ҵ������ɾ��������Ϣ��
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H MODIFY MAJOR_CONTRACT_NO VARCHAR2(90);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H MODIFY BORROWER_NAME VARCHAR2(120);

--��ʱ��
ALTER TABLE CCI_IMP_033 MODIFY RSV_A VARCHAR2(60);
ALTER TABLE CCI_IMP_034 MODIFY ORG_CN_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_034 MODIFY ORG_EN_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_034 MODIFY REGISTATION_ADDRESS VARCHAR2(120);
ALTER TABLE CCI_IMP_034 MODIFY OPERATING_RANGE VARCHAR2(600);
ALTER TABLE CCI_IMP_034 MODIFY RSV_B VARCHAR2(60);
ALTER TABLE CCI_IMP_042 MODIFY RSV_D varchar2(60);
ALTER TABLE CCI_IMP_035 MODIFY ORG_WORK_ADDRESS varchar2(120);
ALTER TABLE CCI_IMP_035 MODIFY RSV_C varchar2(60);
ALTER TABLE CCI_IMP_037 MODIFY NAME varchar2(120);
ALTER TABLE CCI_IMP_037 MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_037 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_041 MODIFY SHAREHOLDER_NAME varchar2(120);
ALTER TABLE CCI_IMP_041 MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_041 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_040 MODIFY RELATION_ENTERPRISE_NAME varchar2(120);
ALTER TABLE CCI_IMP_040 MODIFY REGISTRATION_CODE varchar2(30);
ALTER TABLE CCI_IMP_040 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_043 MODIFY SUPERIOR_ORG_NAME varchar2(120);
ALTER TABLE CCI_IMP_043 MODIFY REGISTRATION_CODE_E varchar2(30);
ALTER TABLE CCI_IMP_043 MODIFY RSV_E varchar2(60);
ALTER TABLE CCI_IMP_039 MODIFY MAJOR_RELATION_NAME varchar2(120);
ALTER TABLE CCI_IMP_039 MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_039 MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_039 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_039 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_036 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_038 MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_038 MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_IMP_038 MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_IMP_003 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_003 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_003 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_046 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_046 MODIFY AUDIT_FIRM_NAME varchar2(120);
ALTER TABLE CCI_IMP_046 MODIFY AUDITOR_NAME varchar2(45);
ALTER TABLE CCI_IMP_013 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_013 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_013 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_004 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_004 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_004 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_047 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_047 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_047 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_014 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_014 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_014 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_011 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_011 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_011 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_012 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_012 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_012 MODIFY AUDITOR_NAME VARCHAR2(45);
ALTER TABLE CCI_IMP_009 MODIFY PROSECUTION_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_IMP_009 MODIFY PROSECUTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_009 MODIFY EXECUTION_RESULT VARCHAR2(150);
ALTER TABLE CCI_IMP_009 MODIFY PROSECUTION_REASON VARCHAR2(450);
ALTER TABLE CCI_IMP_009 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_008 MODIFY IMPORTANT_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_IMP_008 MODIFY IMPORTANT_DESCRIPTION VARCHAR2(375);
ALTER TABLE CCI_IMP_008 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_016 MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_016 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_016 MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_IMP_015 MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_029 MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_029 MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_IMP_029 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_030 MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_030 MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_IMP_030 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_028 MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_028 MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_IMP_028 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_019 MODIFY FACTORING_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_IMP_019 MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_IMP_019 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_006 MODIFY BILL_INTERNAL_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_006 MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_006 MODIFY DISCOUNT_APPLICANT_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_006 MODIFY ACCEPTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_006 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_021 MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_021 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_021 MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_020 MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_023 MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_023 MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_023 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_024 MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_024 MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_024 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_022 MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_022 MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_022 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_018 MODIFY LETTER_OF_CREDIT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_018 MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_018 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_027 MODIFY INDEMNITY_CODE varchar2(90);
ALTER TABLE CCI_IMP_027 MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_IMP_027 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_005 MODIFY ACCEPTANCE_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_005 MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_005 MODIFY DRAWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_048 MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_IMP_048 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_026 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_026 MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_026 MODIFY GUARANTEE_NAME varchar2(120);
ALTER TABLE CCI_IMP_026 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_032 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_032 MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_032 MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_IMP_032 MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_IMP_032 MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_IMP_032 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_032 MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_IMP_044 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_044 MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_044 MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_IMP_044 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_025 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_025 MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_025 MODIFY GUARANTEER_NAME varchar2(120);
ALTER TABLE CCI_IMP_025 MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_IMP_025 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_031 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_031 MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_031 MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_IMP_031 MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_IMP_031 MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_IMP_031 MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_IMP_031 MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_IMP_031 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_045 MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_045 MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_IMP_045 MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_IMP_045 MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_IMP_045 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_001 MODIFY ADVANCE_BUSINESS_NO varchar2(90);
ALTER TABLE CCI_IMP_001 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_001 MODIFY ORIGIN_BUSI_NO varchar2(90);
ALTER TABLE CCI_IMP_010 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_IMP_002 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_IMP_002 MODIFY REGISTRATION_NO VARCHAR2(30);
ALTER TABLE CCI_IMP_002 MODIFY BUSI_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_017 MODIFY MAJOR_CONTRACT_NO VARCHAR2(90);
ALTER TABLE CCI_IMP_017 MODIFY BORROWER_NAME VARCHAR2(120);

--��������
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_BASIC' AND COL_NAME = 'RSV_A';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_BASIC_PROPERTY' AND COL_NAME = 'ORG_CN_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_BASIC_PROPERTY' AND COL_NAME = 'ORG_EN_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_BASIC_PROPERTY' AND COL_NAME = 'REGISTATION_ADDRESS';
UPDATE DP_TABLE_DTL SET COL_LEN = '600' where TABLE_ID = 'CCI_ORGINFO_BASIC_PROPERTY' AND COL_NAME = 'OPERATING_RANGE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_BASIC_PROPERTY' AND COL_NAME = 'RSV_B';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_ORG_STATUS' AND COL_NAME = 'RSV_D';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_CONTACT' AND COL_NAME = 'ORG_WORK_ADDRESS';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_CONTACT' AND COL_NAME = 'RSV_C';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_EXECUTIVE_RELA' AND COL_NAME = 'NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_EXECUTIVE_RELA' AND COL_NAME = 'PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_EXECUTIVE_RELA' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_IMPORT_S_H' AND COL_NAME = 'SHAREHOLDER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_IMPORT_S_H' AND COL_NAME = 'PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_IMPORT_S_H' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_IMPORT_REL_COR' AND COL_NAME = 'RELATION_ENTERPRISE_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_IMPORT_REL_COR' AND COL_NAME = 'REGISTRATION_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_IMPORT_REL_COR' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_SUPERIOR_MECH' AND COL_NAME = 'SUPERIOR_ORG_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_SUPERIOR_MECH' AND COL_NAME = 'REGISTRATION_CODE_E';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_SUPERIOR_MECH' AND COL_NAME = 'RSV_E';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEMBERS' AND COL_NAME = 'MAJOR_RELATION_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEMBERS' AND COL_NAME = 'MAJOR_RELATION_PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEMBERS' AND COL_NAME = 'FAMILY_MEMBER_PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEMBERS' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEMBERS' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_DELETE' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEM_DEL' AND COL_NAME = 'MAJOR_RELATION_PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEM_DEL' AND COL_NAME = 'FAMILY_MEMBER_PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '60' where TABLE_ID = 'CCI_ORGINFO_FAMILY_MEM_DEL' AND COL_NAME = 'RSV_1';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2002' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2002' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2002' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2002' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2002' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2002' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CASH_FLOW_2002' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CASH_FLOW_2002' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_CASH_FLOW_2002' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2007' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2007' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_ASSETS_LIABILITY_2007' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2007' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2007' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_PROFIT_DISTRIBUT_2007' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CASH_FLOW_2007' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CASH_FLOW_2007' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_CASH_FLOW_2007' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BUSI_UNIT_ASSETS_LIA' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BUSI_UNIT_ASSETS_LIA' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_BUSI_UNIT_ASSETS_LIA' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BUSI_UNIT_REVENUE' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BUSI_UNIT_REVENUE' AND COL_NAME = 'AUDIT_FIRM_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '45' where TABLE_ID = 'CCI_BUSI_UNIT_REVENUE' AND COL_NAME = 'AUDITOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_LA' AND COL_NAME = 'PROSECUTION_RECORD_FLOW';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_LA' AND COL_NAME = 'PROSECUTOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '150' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_LA' AND COL_NAME = 'EXECUTION_RESULT';
UPDATE DP_TABLE_DTL SET COL_LEN = '450' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_LA' AND COL_NAME = 'PROSECUTION_REASON';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_LA' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_BI' AND COL_NAME = 'IMPORTANT_RECORD_FLOW';
UPDATE DP_TABLE_DTL SET COL_LEN = '375' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_BI' AND COL_NAME = 'IMPORTANT_DESCRIPTION';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BORROWER_CONCERINFO_BI' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CONTRACT_INFO' AND COL_NAME = 'LOAN_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CONTRACT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CONTRACT_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CONTRACT_AMOUNT_INFO' AND COL_NAME = 'LOAN_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_RECEIPT_INFO' AND COL_NAME = 'LOAN_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_RECEIPT_INFO' AND COL_NAME = 'RECIEPT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_LOAN_RECEIPT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_REPAYMENT' AND COL_NAME = 'LOAN_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_REPAYMENT' AND COL_NAME = 'RECIEPT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_LOAN_REPAYMENT' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_EXTENSION_INFO' AND COL_NAME = 'LOAN_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_LOAN_EXTENSION_INFO' AND COL_NAME = 'RECIEPT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_LOAN_EXTENSION_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FACTORING_BUSI' AND COL_NAME = 'FACTORING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FACTORING_BUSI' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_FACTORING_BUSI' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BILL_DISCOUNT_BUSI_INFO' AND COL_NAME = 'BILL_INTERNAL_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BILL_DISCOUNT_BUSI_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BILL_DISCOUNT_BUSI_INFO' AND COL_NAME = 'DISCOUNT_APPLICANT_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BILL_DISCOUNT_BUSI_INFO' AND COL_NAME = 'ACCEPTOR_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BILL_DISCOUNT_BUSI_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_AGREEMENT_INFO' AND COL_NAME = 'FINANCING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_FINANCE_AGREEMENT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_AGREEMENT_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINAN_AGR_AMOUNT_INFO' AND COL_NAME = 'FINANCING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_INFO' AND COL_NAME = 'FINANCING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_INFO' AND COL_NAME = 'FINANCING_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_FINANCE_BUSI_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_REPAY_INFO' AND COL_NAME = 'FINANCING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_REPAY_INFO' AND COL_NAME = 'FINANCING_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_FINANCE_BUSI_REPAY_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_EXTEN_INFO' AND COL_NAME = 'FINANCING_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_FINANCE_BUSI_EXTEN_INFO' AND COL_NAME = 'FINANCING_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_FINANCE_BUSI_EXTEN_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CREDIT_LETTER_INFO' AND COL_NAME = 'LETTER_OF_CREDIT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CREDIT_LETTER_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CREDIT_LETTER_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_INDEMNITY_BUSI' AND COL_NAME = 'INDEMNITY_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_INDEMNITY_BUSI' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_INDEMNITY_BUSI' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BANK_ACCEPT_BUSI_INFO' AND COL_NAME = 'ACCEPTANCE_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_BANK_ACCEPT_BUSI_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BANK_ACCEPT_BUSI_INFO' AND COL_NAME = 'DRAWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_PUBLIC_CREDIT_INFO' AND COL_NAME = 'CREDIT_AGREEMENT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PUBLIC_CREDIT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_GUARANTEE_CONTRACT_INFO' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_GUARANTEE_CONTRACT_INFO' AND COL_NAME = 'GUARANTEE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_GUARANTEE_CONTRACT_INFO' AND COL_NAME = 'GUARANTEE_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_GUARANTEE_CONTRACT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'MORTGAGE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'MORTGAGER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'ASSESS_ORG_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'ISSUE_ORG_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '600' where TABLE_ID = 'CCI_MORTGAGE_CONTRACT_INFO' AND COL_NAME = 'MORTGAGE_INSTRUCTION';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO' AND COL_NAME = 'PLEDGE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO' AND COL_NAME = 'PLEDGER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_GUARANTEE_CON_INFO_NA' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_GUARANTEE_CON_INFO_NA' AND COL_NAME = 'GUARANTEE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_GUARANTEE_CON_INFO_NA' AND COL_NAME = 'GUARANTEER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '27' where TABLE_ID = 'CCI_GUARANTEE_CON_INFO_NA' AND COL_NAME = 'PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_GUARANTEE_CON_INFO_NA' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'MORTGAGE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'MORTGAGER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '27' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'ASSESS_ORG_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'ISSUE_ORG_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '600' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'MORTGAGE_INSTRUCTION';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_MORTGAGE_CON_INFO_NA' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO_NA' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO_NA' AND COL_NAME = 'PLEDGE_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO_NA' AND COL_NAME = 'PLEDGER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '27' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO_NA' AND COL_NAME = 'PAPER_CODE';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_PLEDGE_CONTRACT_INFO_NA' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_ADVANCE_BUSINESS_INFO' AND COL_NAME = 'ADVANCE_BUSINESS_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ADVANCE_BUSINESS_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_ADVANCE_BUSINESS_INFO' AND COL_NAME = 'ORIGIN_BUSI_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_BUSI_INTEREST_OWE_INFO' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_ASSETS_DISPOSAL_BUSI' AND COL_NAME = 'BORROWER_NAME';
UPDATE DP_TABLE_DTL SET COL_LEN = '30' where TABLE_ID = 'CCI_ASSETS_DISPOSAL_BUSI' AND COL_NAME = 'REGISTRATION_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_ASSETS_DISPOSAL_BUSI' AND COL_NAME = 'BUSI_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '90' where TABLE_ID = 'CCI_CRE_BUSI_DATA_DEL_REQ' AND COL_NAME = 'MAJOR_CONTRACT_NO';
UPDATE DP_TABLE_DTL SET COL_LEN = '120' where TABLE_ID = 'CCI_CRE_BUSI_DATA_DEL_REQ' AND COL_NAME = 'BORROWER_NAME';
