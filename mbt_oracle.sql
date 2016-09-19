--69  鲁丹 MBT 20160912
--DP_IMP_CFG_DTL修改
update  DP_IMP_CFG_DTL t set t.field_name = '%UUID%' where t.field_name = '%WORK_DATE%'; 

--70 高飞 MBT 20160912
--报文上报配置表设置修改
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


--71	高原	MBT	20160914
--机构删除信息类型通用校验，增加codeList
update BIZ_FIELD_CONFIG set valid_rule = 'required,type,length,codeList',
       valid_std  = ',$type,$length,CL_INFORMATION_TYPE'
 where field_id = '194'
   and field_name = 'informationType';
   
--72 鲁丹   MBT  20160918
--format值设置为codelist中的id，导出下载显示codelist值
delete from CCI_DOWNLOAD_CONFIG;

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '006', '主要关系人姓名', 'getMajorRelationName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '007', '主要关系人证件类型', 'getMajorRelationPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '008', '主要关系人证件号码', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '009', '家族关系', 'getFamilyRelationship', 'CL_FAMILY_RALATIONSHIP');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '010', '家族成员姓名', 'getFamilyMemberName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '011', '家族成员证件类型', 'getFamilyMemberPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '012', '家族成员证件号码', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '013', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '004', '上级机构名称', 'getSuperiorOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '005', '登记注册号类型', 'getRegistrationCodeTypeE', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '006', '登记注册号', 'getRegistrationCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '007', '组织机构代码', 'getOrgCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '008', '机构信用代码', 'getOrgCreditCodeE', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '009', '信息更新日期', 'getInformationUpdateDateE', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '004', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '005', '关联人类型', 'getRelationType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '006', '关联企业名称', 'getRelationEnterpriseName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '007', '登记注册号类型', 'getRegistrationCodeType', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '008', '登记注册号码', 'getRegistrationCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '009', '组织机构代码', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '010', '机构信用代码', 'getOrgCreditCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '011', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '004', '机构中文名称', 'getOrgCnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '005', '机构英文名称', 'getOrgEnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '006', '注册（登记）地址', 'getRegistationAddress', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '007', '国别', 'getNationnality', 'CL_NATIONALITY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '008', '注册（登记）地行政区划', 'getRegistationAreaDivision', 'CL_AREA_PROVINCE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '009', '成立日期', 'getEstablishDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '010', '证书到期日', 'getPaperExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '011', '经营（业务）范围', 'getOperatingRange', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '012', '注册资本币种', 'getRegisteredCapitalCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '013', '注册资本（万元）', 'getRegisteredAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '014', '组织机构类别', 'getOrgType', 'CL_ORG_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '015', '组织机构类别细分', 'getOrgTypeClassify', 'CL_ORG_TYPE_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '016', '经济行业分类', 'getEconomicClassify', 'CL_ECONOMIC_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '017', '经济类型', 'getEconomicType', 'CL_ECONOMIC_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '018', '信息更新日期', 'getInformationUpdateDateB', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '003', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '005', '管理行代码', 'getManagementRowCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '006', '客户类型', 'getCustomerType', 'CL_CUSTOMER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '007', '机构信用代码', 'getOrgCreditCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '008', '组织机构代码', 'getOrgCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '009', '登记注册号类型', 'getRegistrationCodeTypeA', 'CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '010', '登记注册号码', 'getRegistrationCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '011', '纳税人识别号（国税）', 'getTaxIdentifyCodeNa', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '012', '纳税人识别号（地税）', 'getTaxIdentifyCodeSt', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '013', '开户许可证核准号', 'getOpenAccountApprovalNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '014', '数据提取日期', 'getDataAbstractDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '004', '基本户状态', 'getBasicStatus', 'CL_BASIC_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '005', '企业规模', 'getEnterpriseScale', 'CL_ENTERPRISE_SCALE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '006', '机构状态', 'getOrgStatus', 'CL_ORG_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '007', '信息更新日期', 'getInformationUpdateDateD', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '004', '机构状态办公（生产、经营）地址', 'getOrgWorkAddress', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '005', '联系电话', 'getTelephone', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '006', '财务部联系电话', 'getFinanceDepartmentTelephone', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '007', '信息更新日期', 'getInformationUpdateDateC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '004', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '005', '股东类型', 'getShareholderType', 'CL_SHAREHOLDER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '006', '股东名称', 'getShareholderName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '007', '证件类型/登记注册号类型', 'getPaperType', 'CL_PAPER_TYPE;CL_REGISTRATION_CODE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '008', '证件号码/登记注册号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '009', '组织机构代码', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '010', '机构信用代码', 'getOrgCreditCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '011', '持股比例', 'getShareholdingRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '012', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '004', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '005', '关系人类型', 'getRelationPartyType', 'CL_RELATION_PARTY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '006', '姓名', 'getName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '007', '证件类型', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '008', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '009', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '011', '主营业务收入', 'getMainBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '012', '主营业务收入出口产品销售收入', 'getMainBusiIncomeExport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '013', '主营业务收入进口产品销售收入', 'getMainBusiIncomeImport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '014', '折扣与拆让', 'getDiscountRemoval', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '015', '主营业务收入净额', 'getMainBusiIncomeNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '016', '主营业务成本', 'getMainBusiCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '017', '主营业务成本出口产品销售成本', 'getMainBusiCostExport', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '018', '主营业务税金及附加', 'getMainBusiTaxAdd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '019', '经营费用', 'getOperatingExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '020', '其他1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '021', '递延收益', 'getDeferredRevenue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '022', '代购代销收入', 'getPurchasingAgencyRevenue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '023', '其他2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '024', '主营业务利润', 'getMainBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '025', '其他业务利润', 'getOtherBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '026', '营业费用', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '027', '管理费用', 'getManageExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '028', '财务费用', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '029', '其他3', 'getOther3', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '030', '营业利润', 'getBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '031', '投资收益', 'getInvestIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '032', '期货收益', 'getFuturesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '033', '补贴收入', 'getSubsidiesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '034', '补贴收入补贴前亏损的企业补贴收入', 'getPreSubsidiesIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '035', '营业外收入', 'getBesideBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '036', '营业外收入处置固定资产净收益', 'getBesideFixedAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '037', '营业外收入非货币性交易收益', 'getBesideNonmonetaryNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '038', '营业外收入出售无形资产收益', 'getBesideIntangibleAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '039', '营业外收入罚款净收入', 'getBesideFineNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '040', '其他4', 'getOther4', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '041', '其他用以前年度含量工资节余弥补利润', 'getWageSavingProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '042', '营业外支出', 'getBesideBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '043', '营业外支出处置固定资产净损失', 'getBesideFixedAssetsLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '044', '营业外支出债务重组损失', 'getBesideDebtRestructuringLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '045', '营业外支出罚款支出', 'getBesideFineExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '046', '营业外支出捐赠支出', 'getBesideDonateExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '047', '其他支出', 'getOtherLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '048', '其他支出结转的含量工资包干节余', 'getOtherExpenseBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '049', '利润总额', 'getTotalProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '050', '所得税', 'getIncomeTax', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '051', '少数股东损益', 'getShareholdersProfitOrLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '052', '未确认的投资损失', 'getUnrecognizedInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '053', '净利润', 'getNetProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '054', '年初未分配利润', 'getUndistributedProfitBegin', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '055', '盈余公积补亏', 'getSurpReseLossSupp', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '056', '其他调整因素', 'getOtherAdjustmentFactor', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '057', '可供分配的利润', 'getProfitAbleToDistribute', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '058', '单项留用的利润', 'getSingleRetainedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '059', '补充流动资本', 'getSupplementalLiquidity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '060', '提取法定盈余公积', 'getExtrStatSurpRese', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '061', '提取法定公益金', 'getExtractStatutoryWelfare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '062', '提取职工奖励及福利基金', 'getExtractRewardWelfareFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '063', '提取储备基金', 'getExtractReserveFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '064', '提取企业发展基金', 'getExtrEnteDeveFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '065', '利润归还投资', 'getProfitReturnInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '066', '其他5', 'getOther5', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '067', '可供投资者分配的利润', 'getProfitForInvestorsAble', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '068', '应付优先股股利', 'getPrefStocDiviToPay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '069', '提取任意盈余公积', 'getExtractAnySurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '070', '应付普通股股利', 'getCommonStockDividendsToPay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '071', '转作资本的普通股股利', 'getCommonStockDividendsSwitch', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '072', '其他6', 'getOther6', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '073', '未分配利润', 'getProfitNotDistributed', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '074', '未分配利润应由以后年度税前利润弥补的亏损', 'getProfitNotDistributedOffset', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '075', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '076', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '077', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE_2');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '011', '销售商品和提供劳务收到的现金', 'getSaleRecievedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '012', '收到的税费返还', 'getTaxRepay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '013', '收到的其他与经营活动有关的现金', 'getRelationCashRecieved', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '014', '经营活动现金流入小计', 'getCashInflowsCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '015', '购买商品接受劳务支付的现金', 'getCashPurcAcceLaboPaym', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '016', '支付给职工以及为职工支付的现金', 'getCashPaidToEmployees', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '017', '支付的各项税费', 'getTaxesPaid', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '018', '支付的其他与经营活动有关的现金', 'getCashPaidRelateToOthers', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '019', '经营活动现金流出小计', 'getBusiOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '020', '经营活动产生的现金流量净额', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '021', '收回投资所收到的现金', 'getRecycleInvestmentCashInflow', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '022', '取得投资收益所收到的现金', 'getCashReceFromInveInco', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '023', '处置固定资产无形资产和其他长期资产所收回的现金净额', 'getDispFixeAsseLongTermNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '024', '收到的其他与投资活动有关的现金', 'getCashReceFromOtheInveActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '025', '投资活动现金流入小计', 'getCashInflFromInveActiCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '026', '购建固定资产无形资产和其他长期资产所支付的现金', 'getBuildPayedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '027', '投资所支付的现金', 'getCashPaidByInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '028', '支付的其他与投资活动有关的现金', 'getOtherRelativeInvestmentCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '029', '投资活动现金流出小计', 'getInvestmentOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '030', '投资活动产生的现金流量净额', 'getInveGeneCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '031', '吸收投资所收到的现金', 'getCashReceAbsoInve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '032', '借款所收到的现金', 'getCashReceivedByBorrower', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '033', '收到的其他与筹资活动有关的现金', 'getCashReceFromOtheFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '034', '筹资活动现金流入小计', 'getCashInflFromFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '035', '偿还债务所支付的现金', 'getPaidInCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '036', '分配股利利润或偿付利息所支付的现金', 'getCashPaidForDivition', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '037', '支付的其他与筹资活动有关的现金', 'getCashPaymRelaToOtheActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '038', '筹资活动现金流出小计', 'getCashOutfForFinaActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '039', '筹集活动产生的现金流量净额', 'getNetCashFlowGeneFromActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '040', '汇率变动对现金的影响', 'getImpaOfExchRateOnCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '066', '现金及现金等价物净增加额', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '042', '净利润', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '043', '计提的资产减值准备', 'getImpairmentOfAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '044', '固定资产拆旧', 'getDemolitionOfFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '045', '无形资产摊销', 'getAmorOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '046', '长期待摊费用摊销', 'getAmorOfLongTermPrepExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '047', '待摊费用减少', 'getPrepaidExpensesDecrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '048', '预提费用增加', 'getAccruedExpensesIncrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '049', '处置固定资产无形资产和其他长期资产的损失', 'getFixeIntaAsseDispoLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '050', '固定资产报废损失', 'getLossOfFixedAssetsReject', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '051', '财务费用', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '052', '投资损失', 'getInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '053', '递延税款贷项', 'getDeferredTaxCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '054', '存货的减少', 'getReductionInInventory', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '055', '经营性应收项目的减少', 'getReduOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '056', '经营性应付项目的增加', 'getIncrOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '057', '其他1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '058', '债务转为资本', 'getDebtToCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '059', '一年内到期的可转换公司债券', 'getConvertibleBondInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '060', '融资租入固定资产', 'getFinancingLeaseFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '061', '其他2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '062', '现金的期末余额', 'getCashTermEndBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '063', '现金的期初余额', 'getCashTermStartBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '064', '现金等价物的期末余额', 'getCashEquiTermEndBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '065', '现金等价物的期初余额', 'getCashEquiTermStarBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '066', '现金及现金等价物净增加额', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '067', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '068', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '069', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '011', '货币资金', 'getCurrencyCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '012', '短期投资', 'getShortTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '013', '应收票据', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '014', '应收股利', 'getDividendsReceivable', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '015', '应收利息', 'getInterestReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '016', '应收账款', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '017', '其他应收款', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '018', '预付账款', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '019', '期货保证金', 'getFuturesMargin', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '020', '应收补贴款', 'getSubsidiesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '021', '应收出口退税', 'getExportTaxRebateReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '022', '存货', 'getStock', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '023', '存货原材料', 'getInventoryRawMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '024', '存货产成品', 'getStockProducts', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '025', '待摊费用', 'getPrepaidExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '026', '待处理流动资产净损失', 'getNetLossTreaWithCurrAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '027', '一年内到期的长期债权投资', 'getLongTermDebtInveInAYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '028', '其他流动资产', 'getOtherFlowCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '029', '流动资产合计', 'getFlowCapitalInTotal', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '030', '长期投资', 'getLongTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '031', '长期股权投资', 'getLongTermEquityInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '032', '长期债权投资', 'getLongTermDebtInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '033', '合并价差', 'getCombinedPriceDifference', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '034', '长期投资合计', 'getTotalLongTermInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '035', '固定资产原价', 'getFixedAssetsPrice', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '036', '累计折旧', 'getAccumulatedDepreciation', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '037', '固定资产净值', 'getFixedAssetsValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '038', '固定资产值减值准备', 'getFixedAssetDeprPrep', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '039', '固定资产净额', 'getFixedAssetsNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '040', '固定资产清理', 'getFixedAssetClear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '041', '工程物资', 'getEngineeringMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '042', '在建工程', 'getUnderConstruction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '043', '待处理固定资产净损失', 'getNetLossOfFixedAsseToTrea', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '044', '固定资产合计', 'getTotalFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '045', '无形资产', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '046', '无形资产土地使用权', 'getLandUseRighOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '047', '递延资产', 'getDeferredAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '048', '递延资产固定资产修理', 'getDefeAsseFixeAsseRepa', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '049', '递延资产固定资产改良支出', 'getCapiImprExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '050', '其他长期资产', 'getOtherLongTermAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '051', '其他长期资产特准储备物资', 'getOtherSpecialMaterialReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '052', '无形及其他资产合计', 'getTotalIntaAndOtheAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '053', '递延税款借项', 'getDeferredTaxDebit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '054', '资产总计', 'getTotalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '055', '短期借款', 'getShortTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '056', '应付票据', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '057', '应付账款', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '058', '预收账款', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '059', '应付工资', 'getWagePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '060', '应付福利费', 'getWelfarePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '061', '应付利润', 'getProfitPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '062', '应交税金', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '063', '其他应交款', 'getOtherPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '064', '其他应付款', 'getOtherPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '065', '预提费用', 'getAccruedExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '066', '预计负债', 'getExpectedLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '067', '一年内到期的长期负债', 'getLongTermLiabilityInAYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '068', '其他流动负债', 'getOtherCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '069', '流动负债合计', 'getTotalCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '070', '长期借款', 'getLongTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '071', '应付债券', 'getBondsPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '072', '长期应付款', 'getLongTermAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '073', '专项应付款', 'getSpecialPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '074', '其他长期负债', 'getOtherLongTermLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '075', '其他长期负债特准储备基金', 'getOtheLongTermLiabSpecReve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '076', '长期负债合计', 'getTotalLongTermLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '077', '递延税款贷项', 'getDeferredTaxCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '078', '负债合计', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '079', '少数股东权益', 'getMinorityShareholdersRights', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '080', '实收资本', 'getRealIncomeCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '081', '国家资本', 'getNationalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '082', '集体资本', 'getCollectiveCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '083', '法人资本', 'getLegalPersonCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '084', '法人资本国有法人资本', 'getNationalLegalPersonCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '085', '法人资本集体法人资本', 'getCollLegaPersCapi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '086', '个人资本', 'getPersonalCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '087', '外商资本', 'getForeignCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '088', '资本公积', 'getCapitalReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '089', '盈余公积', 'getSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '090', '盈余公积法定盈余公积', 'getLegalSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '091', '盈余公积公益金', 'getSurpResePublWelfFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '092', '盈余公积补充流动资本', 'getSurpReseCurrCapi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '093', '未确认的投资损失', 'getUnrecognizedInvestmentLosses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '094', '未分配利润', 'getNondistributedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '095', '外币报表折算差额', 'getDiffOfForeCurrStat', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '096', '所有者权益合计', 'getTotalOwnersEquity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '097', '负债和所有者权益总计', 'getTotaLiabAndOwneEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '098', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '099', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '100', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '011', '营业收入', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '012', '营业成本', 'getBusiCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '013', '营业税金及附加', 'getBusiTaxAdd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '014', '销售费用', 'getSaleExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '015', '管理费用', 'getManageExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '016', '财务费用', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '017', '资产减值损失', 'getAssetReductionLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '018', '公允价值变动净收益', 'getNetIncomeOfFairValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '019', '投资净收益', 'getInvestmentNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '020', '对联营企业和合营企业的投资收益', 'getInveReveToEnte', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '021', '营业利润', 'getBusiProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '022', '营业外收入', 'getBesideBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '023', '营业外支出', 'getBesideBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '024', '非流动资产损失', 'getLossOfNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '025', '利润总额', 'getTotalProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '026', '所得税费用', 'getIncomeTaxExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '027', '净利润', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '028', '基本每股收益', 'getBasicEarningsPerShare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '029', '稀释每股收益', 'getDilutedEarningsPerShare', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '030', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '031', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '032', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE_2');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '011', '销售商品和提供劳务收到的现金', 'getSaleRecievedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '012', '收到的税费返还', 'getTaxRepay', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '013', '收到其他与经营活动有关的现金', 'getRelationCashRecieved', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '014', '经营活动现金流入小计', 'getCashInflowsCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '015', '购买商品接受劳务支付的现金', 'getCashPurcAcceLaboPaym', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '016', '支付给职工以及为职工支付的现金', 'getCashPaidToEmployees', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '017', '支付的各项税费', 'getTaxesPaid', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '018', '支付其他与经营活动有关的现金', 'getCashPaidRelateToOthers', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '019', '经营活动现金流出小计', 'getBusiOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '064', '经营活动产生的现金流量净额', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '021', '收回投资所收到的现金', 'getRecycleInvestmentCashInflow', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '022', '取得投资收益所收到的现金', 'getCashReceFromInveInco', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '023', '处置固定资产无形资产和其他长期资产所收回的现金净额', 'getDisposalFixedAssetNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '024', '处置子公司及其他营业单位收到的现金净额', 'getDisposalSubsidiaryAssetNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '025', '收到其他与投资活动有关的现金', 'getCashReceOtheInveActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '026', '投资活动现金流入小计', 'getCashInflFromInveActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '027', '购建固定资产无形资产和其他长期资产所支付的现金', 'getBuildPayedCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '028', '投资所支付的现金', 'getCashPaidByInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '029', '取得子公司及其他营业单位支付的现金净额', 'getNetCashFromSubsOtheBusi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '030', '支付其他与投资活动有关的现金', 'getOtherRelativeInvestmentCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '031', '投资活动现金流出小计', 'getInvestmentOutflowCashCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '032', '投资活动产生的现金流量净额', 'getInveGeneCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '033', '吸收投资收到的现金', 'getCashReceAbsoInve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '034', '取得借款收到的现金', 'getCashReceivedByBorrower', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '035', '收到其他与筹资活动有关的现金', 'getCashReceFromOtheFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '036', '筹资活动现金流入小计', 'getCashInflFromFinaActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '037', '偿还债务所支付的现金', 'getPaidInCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '038', '分配股利利润或偿付利息所支付的现金', 'getCashPaidForDivition', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '039', '支付其他与筹资活动有关的现金', 'getCashPaymRelaToOtheActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '040', '筹资活动现金流出小计', 'getCashOutfForFinaActiCoun', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '041', '筹集活动产生的现金流量净额', 'getNetCashFlowGeneFromActi', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '042', '汇率变动对现金及现金等价物的影响', 'getImpaOfExchRateOnCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '043', '现金及现金等价物净增加额五', 'getNetIncreaseInCashC', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '044', '期末现金及现金等价物余额六', 'getCashEquiTermBalaEnd', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '045', '期初现金及现金等价物余额', 'getCashEquiTermBalaStar', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '046', '净利润', 'getProfitNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '047', '资产减值准备', 'getImpairmentOfAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '048', '固定资产折旧油气资产折耗生产性生物资产折旧', 'getDemolitionOfFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '049', '无形资产摊销', 'getAmorOfIntaAsse', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '050', '长期待摊费用摊销', 'getAmorOfLongTermPreExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '051', '待摊费用减少', 'getPrepaidExpensesDecrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '052', '预提费用增加', 'getAccruedExpensesIncrease', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '053', '处置固定资产无形资产和其他长期资产的损失', 'getFixeIntaAsseDispoLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '054', '固定资产报废损失', 'getLossOfFixedAssetsReject', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '055', '公允价值变动损失', 'getLossOfFairValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '056', '财务费用', 'getFinancialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '057', '投资损失', 'getInvestmentLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '058', '递延所得税资产减少', 'getDeferredTaxAssetsReduction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '059', '递延所得税负债增加', 'getDefeTaxLiabIncr', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '060', '存货的减少', 'getReductionInInventory', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '061', '经营性应收项目的减少', 'getReduOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '062', '经营性应付项目的增加', 'getIncrOfOperRece', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '063', '其他1', 'getOther1', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '064', '经营活动产生的现金流量净额', 'getBusiCashFlowNet', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '065', '债务转为资本', 'getDebtToCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '066', '一年内到期的可转换公司债券', 'getConvertibleBondInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '067', '融资租入固定资产', 'getFinancingLeaseFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '068', '其他2', 'getOther2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '069', '现金的期末余额', 'getCashTermEndBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '070', '现金的期初余额', 'getCashTermStartBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '071', '现金等价物的期末余额', 'getCashEquiTermEndBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '072', '现金等价物的期初余额', 'getCashEquiTermStarBala', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '073', '现金及现金等价物净增加额', 'getNetIncrInCashAndCashEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '074', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '075', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '076', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '011', '货币资金', 'getCurrencyCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '012', '交易性金融资产', 'getTradingFinancialAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '013', '应收票据', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '014', '应收账款', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '015', '预付账款', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '016', '应收利息', 'getInterestReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '017', '应收股利', 'getDividendsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '018', '其他应收款', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '019', '存货', 'getStock', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '020', '一年内到期的非流动资产', 'getNoncurrencyAssetsInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '021', '其他流动资产', 'getOtherFlowCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '022', '流动资产合计', 'getFlowCapitalInTotal', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '023', '可供出售的金融资产', 'getFinaAsseAvaiForSale', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '024', '持有至到期投资', 'getInvestmentHoldToMaturity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '025', '长期股权投资', 'getLongTermEquityInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '026', '长期应收款', 'getLongTermAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '027', '投资性房地产', 'getInvestmentRealEstate', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '028', '固定资产', 'getFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '029', '在建工程', 'getUnderConstruction', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '030', '工程物资', 'getEngineeringMaterials', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '031', '固定资产清理', 'getFixedAssetClear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '032', '生产性生物资产', 'getProductiveBiologicalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '033', '油气资产', 'getOilAndGasAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '034', '无形资产', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '035', '开发支出', 'getDevelopmentExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '036', '商誉', 'getGoodwill', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '037', '长期待摊费用', 'getLongTermPrepaidExpenses', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '038', '递延所得税资产', 'getDeferredIncomeTaxAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '039', '其他非流动资产', 'getOtherNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '040', '非流动资产合计', 'getTotalNoncurrentAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '041', '资产总计', 'getTotalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '042', '短期借款', 'getShortTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '043', '交易性金融负债', 'getTradingFinancialLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '044', '应付票据', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '045', '应付账款', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '046', '预收账款', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '047', '应付利息', 'getInterestsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '048', '应付职工薪酬', 'getWagePayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '049', '应交税费', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '050', '应付股利', 'getDividendPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '051', '其他应付款', 'getOtherPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '052', '一年内到期的非流动负债', 'getNoncLiabInOneYear', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '053', '其他流动负债', 'getOtherCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '054', '流动负债合计', 'getTotalCurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '055', '长期借款', 'getLongTermBorrowing', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '056', '应付债券', 'getBondsPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '057', '长期应付款', 'getLongTermAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '058', '专项应付款', 'getSpecialPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '059', '预计负债', 'getExpectedLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '060', '递延所得税负债', 'getDeferredTaxCreditLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '061', '其他非流动负债', 'getOtherNoncurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '062', '非流动负债合计', 'getTotalNoncurrentLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '063', '负债合计', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '064', '实收资本（或股本）', 'getRealIncomeCapital', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '065', '资本公积', 'getCapitalReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '066', '减库存股', 'getInventoryReductionUnit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '067', '盈余公积', 'getSurplusReserve', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '068', '未分配利润', 'getNondistributedProfit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '069', '所有者权益合计', 'getTotalOwnersEquity', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '070', '负债和所有者权益合计', 'getTotaLiabAndOwneEqui', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '071', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '072', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '073', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '011', '财政补助收入', 'getFinancialSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '012', '上级补助收入', 'getSuperiorSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '013', '附属单位缴款', 'getSubunitPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '014', '事业收入', 'getCareerIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '015', '预算外资金收入', 'getExtraBudgetaryCapitalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '016', '其他收入', 'getOtherIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '017', '事业收入小计', 'getCareerIncomeCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '018', '经营收入', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '019', '经营收入小计', 'getBusiIncomeCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '020', '拨入专款', 'getDailSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '021', '拨入专款小计', 'getDailSpecialFundCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '022', '收入总计', 'getTotalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '023', '拨出经费', 'getAllocateFunds', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '024', '上缴上级支出', 'getPaidUpperExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '025', '对附属单位补助', 'getSubsidiarySubunit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '026', '事业支出', 'getCareerExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '027', '财政补助支出', 'getFinancialSubsidyExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '028', '预算外资金支出', 'getExtrBudgCapiExpe', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '048', '销售税金', 'getSalesTax2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '030', '结转自筹基建', 'getSelfFinancingInfrastructure', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '031', '事业支出小计', 'getCareerExpenseCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '032', '经营支出', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '033', '经营支出小计', 'getBusiExpenseCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '034', '拨出专款', 'getAllocateSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '035', '专款支出', 'getSpecialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '036', '专款小计', 'getSpecialCount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '037', '支出总计', 'getTotalExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '038', '事业结余', 'getCareerBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '039', '正常收入结余', 'getNormalIncomeBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '040', '收回以前年度事业支出', 'getRecoverBeforeBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '041', '经营结余', 'getBusiBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '042', '以前年度经营亏损', 'getPreviousAnnualBusiLoss', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '043', '结余分配', 'getBalanceDistribution', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '044', '应交所得税', 'getIncomeTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '045', '提取专用基金', 'getExtractSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '046', '转入事业基金', 'getTurnIntoCareerFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '047', '其他结余分配', 'getOtherBalanceDistribution', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '048', '销售税金', 'getSalesTax2', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '049', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '050', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '051', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '009', '报表类型', 'getReportType', 'CL_REPORT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '010', '报表类型细分', 'getReportTypeSubdivision', 'CL_REPORT_TYPE_SUB');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '011', '现金', 'getCash', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '012', '银行存款', 'getBankDeposit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '013', '应收票据', 'getNotesReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '014', '应收账款', 'getAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '015', '预付账款', 'getAdvancePayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '016', '其他应收款', 'getOtherAccountsReceivable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '017', '材料', 'getMaterial', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '018', '产成品', 'getFinishedProduct', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '019', '对外投资', 'getOutboundInvestment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '020', '固定资产', 'getFixedAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '021', '无形资产', 'getIntangibleAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '022', '资产合计', 'getTotalAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '023', '拨出经费', 'getAllocateFunds', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '024', '拨出专款', 'getAllocateSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '025', '专款支出', 'getSpecialExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '026', '事业支出', 'getCareerExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '027', '经营支出', 'getBusiExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '028', '成本费用', 'getCost', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '029', '销售税金', 'getSalesTax', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '030', '上缴上级支出', 'getPaidUpperExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '031', '对附属单位补助', 'getSubsidiarySubunit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '032', '结转自筹基建', 'getSelfFinancingInfrastructure', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '033', '支出合计', 'getTotalExpense', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '034', '资产部类总计', 'getTotalDepartClassAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '035', '借记款项', 'getDebitFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '036', '应付票据', 'getNotesPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '037', '应付账款', 'getAccountsPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '038', '预收账款', 'getAccountsCollectInAdvance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '039', '其他应付款', 'getOtherPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '040', '应缴预算款', 'getBudgetFundPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '041', '应缴财政专户款', 'getFinancialSpecialFundPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '042', '应交税金', 'getTaxPayable', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '043', '负债合计', 'getTotalLiability', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '044', '事业基金', 'getCareerFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '045', '一般基金', 'getNormalFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '046', '投资基金', 'getInvestmentFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '047', '固定基金', 'getFixedFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '048', '专用基金', 'getSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '049', '事业结余', 'getCareerBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '050', '经营结余', 'getBusiBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '051', '净资产合计', 'getTotalNetAssets', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '052', '财政补助收入', 'getFinancialSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '053', '上级补助收入', 'getSuperiorSubsidyIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '054', '拨入专款', 'getDailSpecialFund', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '055', '事业收入', 'getCareerIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '056', '经营收入', 'getBusiIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '057', '附属单位缴款', 'getSubunitPayment', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '058', '其他收入', 'getOtherIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '059', '收入合计', 'getTotalIncome', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '060', '负债部类总计', 'getTotalLiabilities', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '061', '审计事务所名称', 'getAuditFirmName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '062', '审计人员名称', 'getAuditorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '063', '审计时间', 'getCheckTimeC', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '008', '大事信息记录流水号', 'getImportantRecordFlow', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '009', '大事描述', 'getImportantDescription', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '008', '被起诉记录流水号', 'getProsecutionRecordFlow', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '009', '起诉人名称', 'getProsecutorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '010', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '011', '判决执行金额', 'getDecisionExecutionAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '012', '判决执行日期', 'getDecisionExecutionDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '013', '执行结果', 'getExecutionResult', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '014', '被起诉原因', 'getProsecutionReason', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '008', '组织机构代码', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '009', '工商注册登记号', 'getRegistrationNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '010', '业务编号', 'getBusiNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '011', '余额', 'getBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '012', '处置日期', 'getDisposalDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '013', '主要资产处置方式', 'getMajorAssetDisposal', 'CL_MAINASSETS_DISPOSAL');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '014', '已回收金额', 'getRecycledAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '008', '保函号码', 'getIndemnityCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '010', '保函种类', 'getIndemnityType', 'CL_INDEMNITY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '011', '保函状态', 'getIndemnityState', 'CL_INDEMNITY_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '012', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '013', '保函金额', 'getAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '014', '保函开立日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '015', '保函到期日', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '016', '保证金比例', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '017', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '018', '垫款标志', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '019', '保函余额', 'getBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '020', '余额发生日期', 'getBalanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '021', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '008', '保理协议编号', 'getFactoringAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '010', '保理产品类型', 'getProductType', 'CL_PRODUCT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '011', '保理业务状态', 'getBusiState', 'CL_BUSI_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '012', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '013', '叙做金额', 'getContinueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '014', '叙做日期', 'getContinueDate', 'dtae');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '015', '叙做余额', 'getContinueBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '016', '余额变化日期', 'getContinueChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '017', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '018', '垫款标志', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '019', '四级分类', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '020', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '010', '保证合同编号', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '011', '保证人名称', 'getGuaranteeName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '012', '保证人贷款卡编码', 'getGuaranteeLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '013', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '014', '保证金额', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '015', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '016', '保证担保形式', 'getGuaranteeType', 'CL_GUARANTEE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '017', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '008', '信用证号', 'getLetterOfCreditNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '010', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '011', '开证金额', 'getIssueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '012', '开证日期', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '013', '信用证有效期', 'getValidityPeriod', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '014', '信用证付款期限', 'getPaymentTerm', 'CL_PAYMENT_TERM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '015', '保证金比例', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '016', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '017', '垫款标志', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '018', '信用证状态', 'getLetterOfCreditStatus', 'CL_LETTER_OF_CREDIT_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '019', '信用证注销日期', 'getCancellationDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '020', '信用证余额', 'getLetterOfCreditBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '021', '余额报告日期', 'getBalanceReportDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '022', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '008', '垫款业务号码', 'getAdvanceBusinessNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '009', '垫款种类', 'getAdvanceType', 'CL_ADVANCE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '010', '原业务号', 'getOriginBusiNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '011', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '012', '垫款金额', 'getAdvanceAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '013', '垫款日期', 'getAdvanceDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '014', '垫款余额', 'getAdvanceBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '015', '余额发生日期', 'getAdvanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '016', '还款方式', 'getAdvanceForm', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '017', '四级分类', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '018', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '010', '抵押合同编号', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '011', '抵押序号', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '012', '抵押人名称', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '013', '抵押人贷款卡编码', 'getMortgagerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '014', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '015', '抵押物评估价值', 'getMortgageAssessValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '016', '评估日期', 'getAssessDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '017', '评估机构名称', 'getAssessOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '018', '评估机构组织机构代码', 'getAssessOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '019', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '020', '抵押物种类', 'getMortgageType', 'CL_MORTGAGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '021', '抵押物币种', 'getMortgageCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '022', '抵押金额', 'getMortgageAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '023', '登记机关', 'getIssueOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '024', '登记日期', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '025', '抵押物说明', 'getMortgageInstruction', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '026', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '008', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '009', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '010', '授信额度', 'getLoanCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '011', '授信生效起始日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '012', '授信终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '013', '授信额度注销生效日期', 'getLoanCreditStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '014', '授信额度注销原因', 'getLoanCreditCancelReason', 'CL_LOAN_CREDIT_CANCEL_REASON');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '008', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '009', '欠息余额', 'getOweInterestBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '010', '欠息类型', 'getOweInterestType', 'CL_OWE_INTEREST_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '011', '欠息余额改变日期', 'getOweInterestChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '008', '票据内部编号', 'getBillInternalNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '010', '票据种类', 'getBillType', 'CL_BILL_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '011', '贴现申请人名称', 'getDiscountApplicantName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '012', '贴现申请人贷款卡编码', 'getDiscApplLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '013', '承兑人/行名称', 'getAcceptorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '014', '承兑人/行贷款卡编码', 'getAcceptorLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '015', '组织机构代码', 'getOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '016', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '017', '贴现金额', 'getDiscountAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '018', '贴现日', 'getDiscountDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '019', '承兑到期日', 'getAcceptExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '020', '票面金额', 'getBillAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '021', '票据状态', 'getBillStatus', 'CL_BILL_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '022', '四级分类', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '023', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '005', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '010', '保证合同编号', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '011', '保证人名称', 'getGuaranteerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '012', '证件类型', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '013', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '014', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '015', '保证金额', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '016', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '017', '保证担保形式', 'getGuaranteeType', 'CL_GUARANTEE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '018', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '005', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '010', '抵押合同编号', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '011', '抵押序号', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '012', '抵押人名称', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '013', '证件类型', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '014', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '015', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '016', '抵押物评估价值', 'getMortgageAssessValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '017', '评估日期', 'getAssessDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '018', '评估机构名称', 'getAssessOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '019', '评估机构组织机构代码', 'getAssessOrgCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '020', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '021', '抵押物种类', 'getMortgageType', 'CL_MORTGAGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '022', '抵押币种', 'getMortgageCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '023', '抵押金额', 'getMortgageAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '024', '登记机关', 'getIssueOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '025', '登记日期', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '026', '抵押物说明', 'getMortgageInstruction', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '013', '融资余额', 'getFinancingBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '014', '融资业务发放日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '015', '融资业务结束日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '016', '展期标志', 'getExtensionFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '017', '四级分类', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '018', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '010', '融资协议生效日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '011', '融资协议终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '012', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '013', '协议有效状态', 'getAgreementEffiectiveState', 'CL_AGREEMENT_EFFIECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '014', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '015', '融资协议金额', 'getFinancingAgreementAmount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '016', '融资协议余额', 'getFinancingAgreementBalance', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '009', '融资业务编号', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '010', '展期次数', 'getExtensionCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '011', '展期金额', 'getExtensionAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '012', '展期起始日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '013', '展期到期日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '009', '融资业务编号', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '010', '还款次数', 'getRepaymentCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '011', '还款金额', 'getRepaymentAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '012', '还款日期', 'getRepaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '013', '还款方式', 'getRepaymentType', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '009', '借据编号', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '010', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '011', '贷款借据金额', 'getRecieptAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '012', '贷款借据余额', 'getRecieptBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '013', '借据放款日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '014', '借据放款到期日', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '015', '贷款业务种类', 'getLoanBusiType', 'CL_LOAN_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '016', '贷款形式', 'getLoanForm', 'CL_LOAN_FORM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '017', '贷款性质', 'getLoanProperty', 'CL_LOAN_PROPERTY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '018', '贷款投向', 'getLoanOrientation', 'CL_ECONOMIC_CLASSIFY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '019', '贷款种类', 'getLoanType', 'CL_LOAN_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '020', '展期标志', 'getExtensionFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '021', '四级分类', 'getFourStageClassification', 'CL_FOUR_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '022', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '027', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '010', '质押合同编号', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '011', '质押序号', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '012', '出质人名称', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '013', '证件类型', 'getPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '014', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '015', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '016', '质押物价值', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '017', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '018', '质押物种类', 'getPledgeType', 'CL_PLEDGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '019', '质押物币种', 'getPledgeCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '020', '质押金额', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '021', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '009', '融资业务编号', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '010', '融资业务种类', 'getFinancingForm', 'CL_FINANCING_FORM');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '011', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '012', '融资金额', 'getFinancingAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '010', '贷款合同生效日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '011', '贷款合同终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '012', '银团标志', 'getBankGroupFlag', 'CL_BANK_GROUP_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '013', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '014', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '015', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '016', '贷款合同金额', 'getAmount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '017', '可用余额', 'getBalance', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '009', '信贷业务种类', 'getBusiType', 'CL_BUSI_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '010', '质押合同编号', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '011', '质押序号', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '012', '出质人名称', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '013', '出质人贷款卡编码', 'getPledgerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '014', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '015', '质押物价值', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '016', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '017', '质押物种类', 'getPledgeType', 'CL_PLEDGE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '018', '质押物币种', 'getPledgeCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '019', '质押金额', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '020', '合同有效状态', 'getContractEffectiveState', 'CL_CONTRACT_EFFECTIVE_STATE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '009', '借据编号', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '010', '展期次数', 'getExtensionCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '011', '展期金额', 'getAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '012', '展期起始日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '013', '展期到期日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '009', '借据编号', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '010', '还款次数', 'getRepaymentCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '011', '还款日期', 'getRepaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '012', '还款方式', 'getRepaymentType', 'CL_REPAYMENT_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '013', '还款金额', 'getRepaymentAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', 'CL_MSG_RECORD_OPERATE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '008', '承兑协议号码', 'getAcceptanceAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '009', '汇票号码', 'getDraftNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '010', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '011', '出票人名称', 'getDrawerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '012', '币种', 'getCurrency', 'SYS_CURRENCY');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '013', '汇票金额', 'getDraftAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '014', '汇票承兑日', 'getDraftAcceptanceDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '015', '汇票到期日', 'getDraftExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '016', '汇票付款日期', 'getDraftPaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '017', '保证金比例', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '018', '担保标志', 'getGuaranteeFlag', 'CL_GUARANTEE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '019', '垫款标志', 'getAdvanceFlag', 'CL_ADVANCE_FLAG');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '020', '汇票状态', 'getDraftStatus', 'CL_DRAFT_STATUS');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '021', '五级分类', 'getFiveStageClassification', 'CL_FIVE_STAGE_CLASSIFICATION');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '004', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '006', '删除业务种类', 'getDeleteBusiType', 'CL_DELETE_FILE_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '007', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '004', '主要关系人证件类型', 'getMajorRelationPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '005', '主要关系人证件号码', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '006', '家族关系', 'getFamilyRelationship', 'CL_FAMILY_RALATIONSHIP');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '007', '家族成员证件类型', 'getFamilyMemberPaperType', 'CL_PAPER_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '008', '家族成员证件号码', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '009', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '002', '分行号', 'getBranchNo', 'BM_1001');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '004', '信息类别', 'getInformationType', 'CL_INFORMATION_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '005', '关系人类型', 'getRelationPartyType', 'CL_RELATION_PARTY_TYPE');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '006', '信息更新日期', 'getInformationUpdateDate', 'date');


--73	高原	MBT	20160918	
--批量校验拆分步骤

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000003', '1', '0001', 1, 2, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_002', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000004', '1', '0001', 1, 3, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_003', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000005', '1', '0001', 1, 4, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_004', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);

insert into DP_MPP_CFG (MPP_ID, PROJ_ID, BRANCH_ID, BATCH_NO, SEQ_NO, DEST_TABLE, SRC_TABLE, PROC_TYPE, PROC_CFG, DUP_PROC_TYPE, ERR_PROC_TYPE, MPP_NAME, COMMENTS, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, RSV1, RSV2, RSV3, RSV4, RSV5)
values ('20160603000000000000000000000006', '1', '0001', 1, 5, null, null, '4', 'com.synesoft.cci.common.dataimp.DataValidateByIncrementProc', '1', '1', 'CCI_VAD_005', null, '20160105172952', 'admin', '20160105175305', 'admin', null, null, null, null, null);


--74 顾铖钧	MBT	20160918
--数据库扩容，由于数据库和报文编码不一致，数据库可输入汉字字段扩为1.5倍

--业务表
--机构基本信息_基础
ALTER TABLE CCI_ORGINFO_BASIC MODIFY RSV_A VARCHAR2(60);

--机构基本信息_基本属性
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY ORG_CN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY ORG_EN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY REGISTATION_ADDRESS VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY OPERATING_RANGE VARCHAR2(600);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY MODIFY RSV_B VARCHAR2(60);

--机构基本信息_机构状态
ALTER TABLE CCI_ORGINFO_ORG_STATUS MODIFY RSV_D varchar2(60);

--机构基本信息_联络信息
ALTER TABLE CCI_ORGINFO_CONTACT MODIFY ORG_WORK_ADDRESS varchar2(120);
ALTER TABLE CCI_ORGINFO_CONTACT MODIFY RSV_C varchar2(60);

--高管及主要关系人信息
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA MODIFY RSV_1 varchar2(60);

--重要股东
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY SHAREHOLDER_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H MODIFY RSV_1 varchar2(60);

--主要关联企业
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY RELATION_ENTERPRISE_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY REGISTRATION_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR MODIFY RSV_1 varchar2(60);

--上级机构（主管单位）信息
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY SUPERIOR_ORG_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY REGISTRATION_CODE_E varchar2(30);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH MODIFY RSV_E varchar2(60);

--家族成员信息表
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY MAJOR_RELATION_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS MODIFY BORROWER_NAME varchar2(120);

--机构信息删除
ALTER TABLE CCI_ORGINFO_DELETE MODIFY RSV_1 varchar2(60);

--家族成员信息删除
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL MODIFY RSV_1 varchar2(60);

--2002版资产负债表
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002 MODIFY AUDITOR_NAME VARCHAR2(45);

--2002版利润及利润分配表
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY AUDIT_FIRM_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002 MODIFY AUDITOR_NAME varchar2(45);

--2002版现金流量表
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版资产负债表
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版利润及利润分配表
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版现金流量表
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007 MODIFY AUDITOR_NAME VARCHAR2(45);

--事业单位资产负债表
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA MODIFY AUDITOR_NAME VARCHAR2(45);

--事业单位收入支出表
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE MODIFY AUDITOR_NAME VARCHAR2(45);

--诉讼信息表
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTION_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY EXECUTION_RESULT VARCHAR2(150);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY PROSECUTION_REASON VARCHAR2(450);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA MODIFY BORROWER_NAME VARCHAR2(120);

--大事信息表
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY IMPORTANT_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY IMPORTANT_DESCRIPTION VARCHAR2(375);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI MODIFY BORROWER_NAME VARCHAR2(120);

--贷款业务合同信息
ALTER TABLE CCI_CONTRACT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_CONTRACT_INFO MODIFY CREDIT_AGREEMENT_NO varchar2(90);

--贷款业务合同金额信息
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);

--贷款业务借据信息
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO MODIFY BORROWER_NAME varchar2(120);

--贷款业务还款信息
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT MODIFY BORROWER_NAME varchar2(120);

--贷款业务展期信息
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO MODIFY BORROWER_NAME varchar2(120);

--保理业务信息
ALTER TABLE CCI_FACTORING_BUSI MODIFY FACTORING_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI MODIFY BORROWER_NAME varchar2(120);

--票据贴现业务信息表
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY BILL_INTERNAL_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY DISCOUNT_APPLICANT_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY ACCEPTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO MODIFY BORROWER_NAME varchar2(120);

--融资协议信息
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);

--融资协议金额信息表
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);

--融资业务信息表
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO MODIFY BORROWER_NAME varchar2(120);

--融资业务还款信息表
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO MODIFY BORROWER_NAME varchar2(120);

--融资业务展期信息表
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO MODIFY BORROWER_NAME varchar2(120);

--信用证业务信息表
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY LETTER_OF_CREDIT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO MODIFY BORROWER_NAME VARCHAR2(120);

--保函业务信息表
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY INDEMNITY_CODE varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI MODIFY BORROWER_NAME varchar2(120);

--银行承兑汇票业务信息表
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY ACCEPTANCE_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO MODIFY DRAWER_NAME VARCHAR2(120);

--公开授信信息表
ALTER TABLE CCI_PUBLIC_CREDIT_INFO MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO MODIFY BORROWER_NAME varchar2(120);

--保证合同信息表
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY GUARANTEE_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);

--抵押合同信息表
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO MODIFY MORTGAGE_INSTRUCTION varchar2(600);

--质押合同信息表
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO MODIFY BORROWER_NAME varchar2(120);

--自然人保证合同信息表
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY GUARANTEER_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--自然人抵押合同信息表
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--自然人质押合同信息表
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA MODIFY BORROWER_NAME varchar2(120);

--垫款业务信息表
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY ADVANCE_BUSINESS_NO varchar2(90);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO MODIFY ORIGIN_BUSI_NO varchar2(90);

--欠息业务信息
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO MODIFY BORROWER_NAME varchar2(120);

--不良信贷
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY REGISTRATION_NO VARCHAR2(30);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI MODIFY BUSI_NO VARCHAR2(90);

--信贷业务数据删除请求信息表
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ MODIFY MAJOR_CONTRACT_NO VARCHAR2(90);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ MODIFY BORROWER_NAME VARCHAR2(120);


--历史表
--机构基本信息_基础
ALTER TABLE CCI_ORGINFO_BASIC_H MODIFY RSV_A VARCHAR2(60);

--机构基本信息_基本属性
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY ORG_CN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY ORG_EN_NAME VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY REGISTATION_ADDRESS VARCHAR2(120);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY OPERATING_RANGE VARCHAR2(600);
ALTER TABLE CCI_ORGINFO_BASIC_PROPERTY_H MODIFY RSV_B VARCHAR2(60);

--机构基本信息_机构状态
ALTER TABLE CCI_ORGINFO_ORG_STATUS_H MODIFY RSV_D varchar2(60);

--机构基本信息_联络信息
ALTER TABLE CCI_ORGINFO_CONTACT_H MODIFY ORG_WORK_ADDRESS varchar2(120);
ALTER TABLE CCI_ORGINFO_CONTACT_H MODIFY RSV_C varchar2(60);

--高管及主要关系人信息
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_EXECUTIVE_RELA_H MODIFY RSV_1 varchar2(60);

--重要股东
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY SHAREHOLDER_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_S_H_H MODIFY RSV_1 varchar2(60);

--主要关联企业
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY RELATION_ENTERPRISE_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY REGISTRATION_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_IMPORT_REL_COR_H MODIFY RSV_1 varchar2(60);

--上级机构（主管单位）信息
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY SUPERIOR_ORG_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY REGISTRATION_CODE_E varchar2(30);
ALTER TABLE CCI_ORGINFO_SUPERIOR_MECH_H MODIFY RSV_E varchar2(60);

--家族成员信息表
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY MAJOR_RELATION_NAME varchar2(120);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY RSV_1 varchar2(60);
ALTER TABLE CCI_ORGINFO_FAMILY_MEMBERS_H MODIFY BORROWER_NAME varchar2(120);

--机构信息删除
ALTER TABLE CCI_ORGINFO_DELETE_H MODIFY RSV_1 varchar2(60);

--家族成员信息删除
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY MAJOR_RELATION_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY FAMILY_MEMBER_PAPER_CODE varchar2(30);
ALTER TABLE CCI_ORGINFO_FAMILY_MEM_DEL_H MODIFY RSV_1 varchar2(60);

--2002版资产负债表
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2002_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2002版利润及利润分配表
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY AUDIT_FIRM_NAME varchar2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2002_H MODIFY AUDITOR_NAME varchar2(45);

--2002版现金流量表
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2002_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版资产负债表
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_LIABILITY_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版利润及利润分配表
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_PROFIT_DISTRIBUT_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--2007版现金流量表
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_CASH_FLOW_2007_H MODIFY AUDITOR_NAME VARCHAR2(45);

--事业单位资产负债表
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_ASSETS_LIA_H MODIFY AUDITOR_NAME VARCHAR2(45);

--事业单位收入支出表
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY AUDIT_FIRM_NAME VARCHAR2(120);
ALTER TABLE CCI_BUSI_UNIT_REVENUE_H MODIFY AUDITOR_NAME VARCHAR2(45);

--诉讼信息表
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTION_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY EXECUTION_RESULT VARCHAR2(150);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY PROSECUTION_REASON VARCHAR2(450);
ALTER TABLE CCI_BORROWER_CONCERINFO_LA_H MODIFY BORROWER_NAME VARCHAR2(120);

--大事信息表
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY IMPORTANT_RECORD_FLOW VARCHAR2(90);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY IMPORTANT_DESCRIPTION VARCHAR2(375);
ALTER TABLE CCI_BORROWER_CONCERINFO_BI_H MODIFY BORROWER_NAME VARCHAR2(120);

--贷款业务合同信息
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_CONTRACT_INFO_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);

--贷款业务合同金额信息
ALTER TABLE CCI_CONTRACT_AMOUNT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);

--贷款业务借据信息
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_RECEIPT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--贷款业务还款信息
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_REPAYMENT_H MODIFY BORROWER_NAME varchar2(120);

--贷款业务展期信息
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY LOAN_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY RECIEPT_NO varchar2(90);
ALTER TABLE CCI_LOAN_EXTENSION_INFO_H MODIFY BORROWER_NAME varchar2(120);

--保理业务信息
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY FACTORING_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_FACTORING_BUSI_H MODIFY BORROWER_NAME varchar2(120);

--票据贴现业务信息表
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY BILL_INTERNAL_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY DISCOUNT_APPLICANT_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY ACCEPTOR_NAME VARCHAR2(120);
ALTER TABLE CCI_BILL_DISCOUNT_BUSI_INFO_H MODIFY BORROWER_NAME varchar2(120);

--融资协议信息
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_FINANCE_AGREEMENT_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);

--融资协议金额信息表
ALTER TABLE CCI_FINAN_AGR_AMOUNT_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);

--融资业务信息表
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_INFO_H MODIFY BORROWER_NAME varchar2(120);

--融资业务还款信息表
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_REPAY_INFO_H MODIFY BORROWER_NAME varchar2(120);

--融资业务展期信息表
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY FINANCING_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY FINANCING_NO VARCHAR2(90);
ALTER TABLE CCI_FINANCE_BUSI_EXTEN_INFO_H MODIFY BORROWER_NAME varchar2(120);

--信用证业务信息表
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY LETTER_OF_CREDIT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_CREDIT_LETTER_INFO_H MODIFY BORROWER_NAME VARCHAR2(120);

--保函业务信息表
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY INDEMNITY_CODE varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_INDEMNITY_BUSI_H MODIFY BORROWER_NAME varchar2(120);

--银行承兑汇票业务信息表
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY ACCEPTANCE_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY CREDIT_AGREEMENT_NO VARCHAR2(90);
ALTER TABLE CCI_BANK_ACCEPT_BUSI_INFO_H MODIFY DRAWER_NAME VARCHAR2(120);

--公开授信信息表
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H MODIFY CREDIT_AGREEMENT_NO varchar2(90);
ALTER TABLE CCI_PUBLIC_CREDIT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--保证合同信息表
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY GUARANTEE_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--抵押合同信息表
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CONTRACT_INFO_H MODIFY MORTGAGE_INSTRUCTION varchar2(600);

--质押合同信息表
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_H MODIFY BORROWER_NAME varchar2(120);

--自然人保证合同信息表
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY GUARANTEE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY GUARANTEER_NAME varchar2(120);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_GUARANTEE_CON_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--自然人抵押合同信息表
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGER_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY ASSESS_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY ISSUE_ORG_NAME varchar2(120);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY MORTGAGE_INSTRUCTION varchar2(600);
ALTER TABLE CCI_MORTGAGE_CON_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--自然人质押合同信息表
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY MAJOR_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PLEDGE_CONTRACT_NO varchar2(90);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PLEDGER_NAME varchar2(120);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY PAPER_CODE varchar2(27);
ALTER TABLE CCI_PLEDGE_CONTRACT_INFO_NA_H MODIFY BORROWER_NAME varchar2(120);

--垫款业务信息表
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY ADVANCE_BUSINESS_NO varchar2(90);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY BORROWER_NAME varchar2(120);
ALTER TABLE CCI_ADVANCE_BUSINESS_INFO_H MODIFY ORIGIN_BUSI_NO varchar2(90);

--欠息业务信息
ALTER TABLE CCI_BUSI_INTEREST_OWE_INFO_H MODIFY BORROWER_NAME varchar2(120);

--不良信贷
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY BORROWER_NAME VARCHAR2(120);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY REGISTRATION_NO VARCHAR2(30);
ALTER TABLE CCI_ASSETS_DISPOSAL_BUSI_H MODIFY BUSI_NO VARCHAR2(90);

--信贷业务数据删除请求信息表
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H MODIFY MAJOR_CONTRACT_NO VARCHAR2(90);
ALTER TABLE CCI_CRE_BUSI_DATA_DEL_REQ_H MODIFY BORROWER_NAME VARCHAR2(120);

--临时表
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

--批量表定义
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
