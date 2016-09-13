delete from CCI_DOWNLOAD_CONFIG;

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '006', '主要关系人姓名', 'getMajorRelationName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '007', '主要关系人证件类型', 'getMajorRelationPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '008', '主要关系人证件号码', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '009', '家族关系', 'getFamilyRelationship', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '010', '家族成员姓名', 'getFamilyMemberName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '011', '家族成员证件类型', 'getFamilyMemberPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '012', '家族成员证件号码', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMembers', '013', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '004', '上级机构名称', 'getSuperiorOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoSuperiorMech', '005', '登记注册号类型', 'getRegistrationCodeTypeE', null);

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
values ('CciOrginfoImportRelCor', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '004', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '005', '关联人类型', 'getRelationType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '006', '关联企业名称', 'getRelationEnterpriseName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportRelCor', '007', '登记注册号类型', 'getRegistrationCodeType', null);

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
values ('CciOrginfoBasicProperty', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '004', '机构中文名称', 'getOrgCnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '005', '机构英文名称', 'getOrgEnName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '006', '注册（登记）地址', 'getRegistationAddress', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '007', '国别', 'getNationnality', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '008', '注册（登记）地行政区划', 'getRegistationAreaDivision', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '009', '成立日期', 'getEstablishDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '010', '证书到期日', 'getPaperExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '011', '经营（业务）范围', 'getOperatingRange', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '012', '注册资本币种', 'getRegisteredCapitalCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '013', '注册资本（万元）', 'getRegisteredAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '014', '组织机构类别', 'getOrgType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '015', '组织机构类别细分', 'getOrgTypeClassify', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '016', '经济行业分类', 'getEconomicClassify', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '017', '经济类型', 'getEconomicType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasicProperty', '018', '信息更新日期', 'getInformationUpdateDateB', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '003', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '005', '管理行代码', 'getManagementRowCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '006', '客户类型', 'getCustomerType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '007', '机构信用代码', 'getOrgCreditCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '008', '组织机构代码', 'getOrgCodeA', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoBasic', '009', '登记注册号类型', 'getRegistrationCodeTypeA', null);

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
values ('CciOrginfoOrgStatus', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '004', '基本户状态', 'getBasicStatus', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '005', '企业规模', 'getEnterpriseScale', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '006', '机构状态', 'getOrgStatus', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoOrgStatus', '007', '信息更新日期', 'getInformationUpdateDateD', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoContact', '002', '分行号', 'getBranchNo', null);

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
values ('CciOrginfoImportsh', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '004', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '005', '股东类型', 'getShareholderType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '006', '股东名称', 'getShareholderName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoImportsh', '007', '证件类型/登记注册号类型', 'getPaperType', null);

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
values ('CciOrginfoExecutiveRela', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '004', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '005', '关系人类型', 'getRelationPartyType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '006', '姓名', 'getName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoExecutiveRela', '007', '证件类型', 'getPaperType', null);

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
values ('CciProfitDistribut2002', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2002', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciCashFlow2002', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2002', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciAssetsLiability2002', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2002', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciProfitDistribut2007', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciProfitDistribut2007', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciCashFlow2007', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCashFlow2007', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciAssetsLiability2007', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsLiability2007', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciBusiUnitRevenue', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitRevenue', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciBusiUnitAssetsLia', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '008', '报表年份', 'getReportYear', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '009', '报表类型', 'getReportType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiUnitAssetsLia', '010', '报表类型细分', 'getReportTypeSubdivision', null);

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
values ('CciBorrowerConcerinfoBi', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoBi', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

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
values ('CciBorrowerConcerinfoLa', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '008', '被起诉记录流水号', 'getProsecutionRecordFlow', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '009', '起诉人名称', 'getProsecutorName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBorrowerConcerinfoLa', '010', '币种', 'getCurrency', null);

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
values ('CciAssetsDisposalBusi', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

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
values ('CciAssetsDisposalBusi', '013', '主要资产处置方式', 'getMajorAssetDisposal', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAssetsDisposalBusi', '014', '已回收金额', 'getRecycledAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '008', '保函号码', 'getIndemnityCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '010', '保函种类', 'getIndemnityType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '011', '保函状态', 'getIndemnityState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '012', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '013', '保函金额', 'getAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '014', '保函开立日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '015', '保函到期日', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '016', '保证金比例', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '017', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '018', '垫款标志', 'getAdvanceFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '019', '保函余额', 'getBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '020', '余额发生日期', 'getBalanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciIndemnityBusi', '021', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '008', '保理协议编号', 'getFactoringAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '010', '保理产品类型', 'getProductType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '011', '保理业务状态', 'getBusiState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '012', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '013', '叙做金额', 'getContinueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '014', '叙做日期', 'getContinueDate', 'dtae');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '015', '叙做余额', 'getContinueBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '016', '余额变化日期', 'getContinueChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '017', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '018', '垫款标志', 'getAdvanceFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '019', '四级分类', 'getFourStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFactoringBusi', '020', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '010', '保证合同编号', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '011', '保证人名称', 'getGuaranteeName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '012', '保证人贷款卡编码', 'getGuaranteeLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '013', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '014', '保证金额', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '015', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '016', '保证担保形式', 'getGuaranteeType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeContractInfo', '017', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '008', '信用证号', 'getLetterOfCreditNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '010', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '011', '开证金额', 'getIssueAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '012', '开证日期', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '013', '信用证有效期', 'getValidityPeriod', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '014', '信用证付款期限', 'getPaymentTerm', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '015', '保证金比例', 'getMarginRatio', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '016', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '017', '垫款标志', 'getAdvanceFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '018', '信用证状态', 'getLetterOfCreditStatus', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '019', '信用证注销日期', 'getCancellationDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '020', '信用证余额', 'getLetterOfCreditBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '021', '余额报告日期', 'getBalanceReportDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreditLetterInfo', '022', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '008', '垫款业务号码', 'getAdvanceBusinessNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '009', '垫款种类', 'getAdvanceType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '010', '原业务号', 'getOriginBusiNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '011', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '012', '垫款金额', 'getAdvanceAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '013', '垫款日期', 'getAdvanceDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '014', '垫款余额', 'getAdvanceBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '015', '余额发生日期', 'getAdvanceOccDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '016', '还款方式', 'getAdvanceForm', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '017', '四级分类', 'getFourStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciAdvanceBusinessInfo', '018', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '010', '抵押合同编号', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '011', '抵押序号', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '012', '抵押人名称', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '013', '抵押人贷款卡编码', 'getMortgagerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '014', '币种', 'getCurrency', null);

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
values ('CciMortgageContractInfo', '020', '抵押物种类', 'getMortgageType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '021', '抵押物币种', 'getMortgageCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '022', '抵押金额', 'getMortgageAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '023', '登记机关', 'getIssueOrgName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '024', '登记日期', 'getIssueDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '025', '抵押物说明', 'getMortgageInstruction', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageContractInfo', '026', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '008', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '009', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '010', '授信额度', 'getLoanCredit', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '011', '授信生效起始日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '012', '授信终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '013', '授信额度注销生效日期', 'getLoanCreditStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPublicCreditInfo', '014', '授信额度注销原因', 'getLoanCreditCancelReason', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '008', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '009', '欠息余额', 'getOweInterestBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '010', '欠息类型', 'getOweInterestType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBusiInterestOweInfo', '011', '欠息余额改变日期', 'getOweInterestChangeDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '008', '票据内部编号', 'getBillInternalNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '010', '票据种类', 'getBillType', null);

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
values ('CciBillDiscountBusiInfo', '016', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '017', '贴现金额', 'getDiscountAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '018', '贴现日', 'getDiscountDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '019', '承兑到期日', 'getAcceptExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '020', '票面金额', 'getBillAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '021', '票据状态', 'getBillStatus', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '022', '四级分类', 'getFourStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBillDiscountBusiInfo', '023', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '005', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '010', '保证合同编号', 'getGuaranteeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '011', '保证人名称', 'getGuaranteerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '012', '证件类型', 'getPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '013', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '014', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '015', '保证金额', 'getGuaranteeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '016', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '017', '保证担保形式', 'getGuaranteeType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciGuaranteeConInfoNa', '018', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '004', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '005', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '010', '抵押合同编号', 'getMortgageContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '011', '抵押序号', 'getMortgageNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '012', '抵押人名称', 'getMortgagerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '013', '证件类型', 'getPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '014', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '015', '币种', 'getCurrency', null);

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
values ('CciMortgageConInfoNa', '021', '抵押物种类', 'getMortgageType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '022', '抵押币种', 'getMortgageCurrency', null);

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
values ('CciFinanceBusiInfo', '017', '四级分类', 'getFourStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '018', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '010', '融资协议生效日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '011', '融资协议终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '012', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceAgreementInfo', '013', '协议有效状态', 'getAgreementEffiectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanAgrAmountInfo', '014', '币种', 'getCurrency', null);

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
values ('CciFinanceBusiExtenInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiExtenInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

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
values ('CciFinanceBusiRepayInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiRepayInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

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
values ('CciFinanceBusiRepayInfo', '013', '还款方式', 'getRepaymentType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '009', '借据编号', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '010', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '011', '贷款借据金额', 'getRecieptAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '012', '贷款借据余额', 'getRecieptBalance', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '013', '借据放款日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '014', '借据放款到期日', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '015', '贷款业务种类', 'getLoanBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '016', '贷款形式', 'getLoanForm', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '017', '贷款性质', 'getLoanProperty', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '018', '贷款投向', 'getLoanOrientation', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '019', '贷款种类', 'getLoanType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '020', '展期标志', 'getExtensionFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '021', '四级分类', 'getFourStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanReceiptInfo', '022', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '009', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciMortgageConInfoNa', '027', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '010', '质押合同编号', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '011', '质押序号', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '012', '出质人名称', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '013', '证件类型', 'getPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '014', '证件号码', 'getPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '015', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '016', '质押物价值', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '017', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '018', '质押物种类', 'getPledgeType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '019', '质押物币种', 'getPledgeCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '020', '质押金额', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfoNa', '021', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '008', '融资协议编号', 'getFinancingAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '009', '融资业务编号', 'getFinancingNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '010', '融资业务种类', 'getFinancingForm', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '011', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciFinanceBusiInfo', '012', '融资金额', 'getFinancingAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '010', '贷款合同生效日期', 'getStartDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '011', '贷款合同终止日期', 'getExpiryDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '012', '银团标志', 'getBankGroupFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '013', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractInfo', '014', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciContractAmountInfo', '015', '币种', 'getCurrency', null);

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
values ('CciPledgeContractInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '008', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '009', '信贷业务种类', 'getBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '010', '质押合同编号', 'getPledgeContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '011', '质押序号', 'getPledgeNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '012', '出质人名称', 'getPledgerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '013', '出质人贷款卡编码', 'getPledgerLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '014', '币种', 'getCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '015', '质押物价值', 'getPledgeValue', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '016', '合同签订日期', 'getContractSignDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '017', '质押物种类', 'getPledgeType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '018', '质押物币种', 'getPledgeCurrency', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '019', '质押金额', 'getPledgeAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciPledgeContractInfo', '020', '合同有效状态', 'getContractEffectiveState', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanExtensionInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

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
values ('CciLoanRepayment', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '008', '贷款合同号码', 'getLoanContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '009', '借据编号', 'getRecieptNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '010', '还款次数', 'getRepaymentCount', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '011', '还款日期', 'getRepaymentDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '012', '还款方式', 'getRepaymentType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciLoanRepayment', '013', '还款金额', 'getRepaymentAmount', 'amt');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '006', '业务发生日期', 'getBusiDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '007', '信息记录操作类型', 'getMsgRecordOperateType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '008', '承兑协议号码', 'getAcceptanceAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '009', '汇票号码', 'getDraftNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '010', '授信协议号码', 'getCreditAgreementNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '011', '出票人名称', 'getDrawerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '012', '币种', 'getCurrency', null);

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
values ('CciBankAcceptBusiInfo', '018', '担保标志', 'getGuaranteeFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '019', '垫款标志', 'getAdvanceFlag', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '020', '汇票状态', 'getDraftStatus', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciBankAcceptBusiInfo', '021', '五级分类', 'getFiveStageClassification', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '002', '贷款卡编码', 'getLoanCardNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '003', '借款人名称', 'getBorrowerName', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '004', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '005', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '006', '删除业务种类', 'getDeleteBusiType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciCreBusiDataDelReq', '007', '主合同编号', 'getMajorContractNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '004', '主要关系人证件类型', 'getMajorRelationPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '005', '主要关系人证件号码', 'getMajorRelationPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '006', '家族关系', 'getFamilyRelationship', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '007', '家族成员证件类型', 'getFamilyMemberPaperType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '008', '家族成员证件号码', 'getFamilyMemberPaperCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoFamilyMemDel', '009', '信息更新日期', 'getInformationUpdateDate', 'date');

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '001', '客户号', 'getCustomerCode', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '002', '分行号', 'getBranchNo', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '003', '金融机构代码', 'getBranchId', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '004', '信息类别', 'getInformationType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '005', '关系人类型', 'getRelationPartyType', null);

insert into CCI_DOWNLOAD_CONFIG (FUNC_NAME, NO, HEAD_NAME, GET_METHOD, FORMAT)
values ('CciOrginfoDelete', '006', '信息更新日期', 'getInformationUpdateDate', 'date');


--68  鲁丹 MBT 20160909
--上报并反馈成功后页面key不可以修改

delete from COM_CONTROL_DEFINE;
insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2002_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '003', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2002_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '046', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2002_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '013', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsLiability2007_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '004', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciProfitDistribut2007_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '047', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCashFlow2007_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '014', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitAssetsLia_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '011', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_003', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_004', 'reportYear', '报表年份', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_005', 'reportType ', '报表类型', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiUnitRevenue_006', 'reportTypeSubdivision', '报表类型细分', '20160830', 'ld', '20160831', 'ld', '012', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoLa_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '009', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoLa_002', 'loanCardNo ', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '009', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoLa_003', 'customerCode ', '客户号', '20160830', 'ld', '20160831', 'ld', '009', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoLa_004', 'prosecutionRecordFlow', '被起诉记录流水号', '20160830', 'ld', '20160831', 'ld', '009', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoBi_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '008', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoBi_002', 'loanCardNo ', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '008', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoBi_003', 'customerCode ', '客户号', '20160830', 'ld', '20160831', 'ld', '008', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBorrowerConcerinfoBi_004', 'importantRecordFlow', '大事信息记录流水号', '20160830', 'ld', '20160831', 'ld', '008', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciContractInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '016', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciContractInfo_002', 'loanCardNo ', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '016', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciContractInfo_003', 'loanContractNo', '贷款合同号码', '20160830', 'ld', '20160831', 'ld', '016', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanReceiptInfo_001', 'branchId ', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '029', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanReceiptInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '029', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanReceiptInfo_003', 'loanContractNo', '贷款合同号码', '20160830', 'ld', '20160831', 'ld', '029', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanReceiptInfo_004', 'recieptNo', '借据编号', '20160830', 'ld', '20160831', 'ld', '029', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_003', 'loanContractNo', '贷款合同号码 ', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_004', 'recieptNo', '借据编号  ', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_005', 'busiDate', '业务发生日期 ', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanRepayment_006', 'repaymentCount', '还款次数', '20160830', 'ld', '20160831', 'ld', '030', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanExtensionInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '028', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanExtensionInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '028', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanExtensionInfo_003', 'loanContractNo', '贷款合同号码 ', '20160830', 'ld', '20160831', 'ld', '028', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciLoanExtensionInfo_004', 'recieptNo', '借据编号  ', '20160830', 'ld', '20160831', 'ld', '028', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFactoringBusi_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '019', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFactoringBusi_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '019', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFactoringBusi_003', 'factoringAgreementNo', '保理协议编号', '20160830', 'ld', '20160831', 'ld', '019', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBillDiscountBusiInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '006', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBillDiscountBusiInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '006', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBillDiscountBusiInfo_003', 'billInternalNo', '票据内部编号', '20160830', 'ld', '20160831', 'ld', '006', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceAgreementInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '021', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceAgreementInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '021', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceAgreementInfo_003', 'financingAgreementNo', '融资协议编号', '20160830', 'ld', '20160831', 'ld', '021', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '023', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '023', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiInfo_003', 'financingAgreementNo', '融资协议编号', '20160830', 'ld', '20160831', 'ld', '023', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiInfo_004', 'financingNo', '融资业务编号', '20160830', 'ld', '20160831', 'ld', '023', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_003', 'financingAgreementNo', '融资协议编号', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_004', 'financingNo', '融资业务编号', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_005', 'busiDate', '业务发生日期', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiRepayInfo_006', 'repaymentCount', '还款次数', '20160830', 'ld', '20160831', 'ld', '024', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiExtenInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '022', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiExtenInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '022', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiExtenInfo_003', 'financingAgreementNo', '融资协议编号', '20160830', 'ld', '20160831', 'ld', '022', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciFinanceBusiExtenInfo_004', 'financingNo', '融资业务编号', '20160830', 'ld', '20160831', 'ld', '022', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreditLetterInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '018', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreditLetterInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '018', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreditLetterInfo_003', 'letterOfCreditNo', '信用证号码', '20160830', 'ld', '20160831', 'ld', '018', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciIndemnityBusi_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '027', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciIndemnityBusi_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '027', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciIndemnityBusi_003', 'indemnityCode', '保函号码', '20160830', 'ld', '20160831', 'ld', '027', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBankAcceptBusiInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '005', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBankAcceptBusiInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '005', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBankAcceptBusiInfo_003', ' draftNo', '汇票号码', '20160830', 'ld', '20160831', 'ld', '005', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPublicCreditInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '048', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPublicCreditInfo_002', 'creditAgreementNo', '授信协议号码', '20160830', 'ld', '20160831', 'ld', '048', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeContractInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '026', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeContractInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '026', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeContractInfo_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '026', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeContractInfo_004', 'guaranteeContractNo', '保证合同号', '20160830', 'ld', '20160831', 'ld', '026', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageContractInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '032', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageContractInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '032', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageContractInfo_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '032', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageContractInfo_004', 'mortgageContractNo', '抵押合同号', '20160830', 'ld', '20160831', 'ld', '032', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '044', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '044', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfo_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '044', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfo_004', 'pledgeContractNo', '质押合同号', '20160830', 'ld', '20160831', 'ld', '044', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeConInfoNa_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '025', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeConInfoNa_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '025', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeConInfoNa_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '025', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciGuaranteeConInfoNa_004', 'guaranteeContractNo', '自然人保证合同号', '20160830', 'ld', '20160831', 'ld', '025', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageConInfoNa_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '031', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageConInfoNa_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '031', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageConInfoNa_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '031', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciMortgageConInfoNa_004', 'mortgageContractNo', '自然人抵押合同号', '20160830', 'ld', '20160831', 'ld', '031', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfoNa_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '045', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfoNa_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '045', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfoNa_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '045', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciPledgeContractInfoNa_004', 'pledgeContractNo', '自然人质押合同号', '20160830', 'ld', '20160831', 'ld', '045', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAdvanceBusinessInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '001', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAdvanceBusinessInfo_002', 'advanceBusinessNo', '垫款业务号码', '20160830', 'ld', '20160831', 'ld', '001', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiInterestOweInfo_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '010', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiInterestOweInfo_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '010', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiInterestOweInfo_003', 'currency ', '币种', '20160830', 'ld', '20160831', 'ld', '010', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciBusiInterestOweInfo_004', 'oweInterestType', '欠息类型', '20160830', 'ld', '20160831', 'ld', '010', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsDisposalBusi_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '002', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsDisposalBusi_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '002', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsDisposalBusi_003', 'busiNo', '被处置资产原业务编号', '20160830', 'ld', '20160831', 'ld', '002', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsDisposalBusi_004', 'disposalDate', '处置日期', '20160830', 'ld', '20160831', 'ld', '002', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciAssetsDisposalBusi_005', 'majorAssetDisposal', '处置方式', '20160830', 'ld', '20160831', 'ld', '002', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreBusiDataDelReq_001', 'branchId', '金融机构代码', '20160830', 'ld', '20160831', 'ld', '017', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreBusiDataDelReq_002', 'loanCardNo', '贷款卡编码', '20160830', 'ld', '20160831', 'ld', '017', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreBusiDataDelReq_003', 'majorContractNo ', '主合同编号', '20160830', 'ld', '20160831', 'ld', '017', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciCreBusiDataDelReq_004', 'deleteBusiType', '删除种类', '20160830', 'ld', '20160831', 'ld', '017', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoBasic_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '033', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoBasic_002', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '033', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoImportRelCor_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '040', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoImportRelCor_002', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '040', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoImportsh_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '041', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoImportsh_002', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '041', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoExecutiveRela_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '037', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoExecutiveRela_002', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '037', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoExecutiveRela_003', 'relationType', '关系人类型', '20160830', 'ld', '20160831', 'ld', '037', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoExecutiveRela_004', 'paperType', '证件类型', '20160830', 'ld', '20160831', 'ld', '037', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoExecutiveRela_005', 'paperCode', '证件号码', '20160830', 'ld', '20160831', 'ld', '037', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_002', 'majorRelationPaperType', '主要关系人证件类型', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_003', 'majorRelationPaperCode', '主要关系人证件号码', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_004', 'familyRelationship ', '家族关系', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_005', 'familyMemberPaperType ', '家族成员证件类型', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMembers_006', 'familyMemberPaperCode', '家族成员证件号码', '20160830', 'ld', '20160831', 'ld', '039', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoDelete_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '036', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoDelete_002', 'customerCode', '客户号', '20160830', 'ld', '20160831', 'ld', '036', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_001', 'branchId ', '报送金融机构代码', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_002', 'majorRelationPaperType', '主要关系人证件类型', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_003', 'majorRelationPaperCode', '主要关系人证件号码', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_004', 'familyRelationship ', '家族关系', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_005', 'familyMemberPaperType ', '家族成员证件类型', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);

insert into COM_CONTROL_DEFINE (CTRL_PROXY_ID, CTRL_ID, CTRL_NAME, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER, BUS_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('CciOrginfoFamilyMemDel_006', 'familyMemberPaperCode', '家族成员证件号码', '20160830', 'ld', '20160831', 'ld', '038', null, null, null);




delete from COM_CONTROL_MAPPING;

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('1', 'M', 'CciAssetsLiability2002_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('2', 'M', 'CciAssetsLiability2002_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('3', 'M', 'CciAssetsLiability2002_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('4', 'M', 'CciAssetsLiability2002_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('5', 'M', 'CciAssetsLiability2002_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('6', 'M', 'CciAssetsLiability2002_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('7', 'M', 'CciProfitDistribut2002_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('8', 'M', 'CciProfitDistribut2002_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('9', 'M', 'CciProfitDistribut2002_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('10', 'M', 'CciProfitDistribut2002_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('11', 'M', 'CciProfitDistribut2002_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('12', 'M', 'CciProfitDistribut2002_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('13', 'M', 'CciCashFlow2002_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('14', 'M', 'CciCashFlow2002_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('15', 'M', 'CciCashFlow2002_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('16', 'M', 'CciCashFlow2002_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('17', 'M', 'CciCashFlow2002_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('18', 'M', 'CciCashFlow2002_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('19', 'M', 'CciAssetsLiability2007_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('20', 'M', 'CciAssetsLiability2007_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('21', 'M', 'CciAssetsLiability2007_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('22', 'M', 'CciAssetsLiability2007_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('23', 'M', 'CciAssetsLiability2007_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('24', 'M', 'CciAssetsLiability2007_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('25', 'M', 'CciProfitDistribut2007_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('26', 'M', 'CciProfitDistribut2007_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('27', 'M', 'CciProfitDistribut2007_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('28', 'M', 'CciProfitDistribut2007_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('29', 'M', 'CciProfitDistribut2007_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('30', 'M', 'CciProfitDistribut2007_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('31', 'M', 'CciCashFlow2007_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('32', 'M', 'CciCashFlow2007_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('33', 'M', 'CciCashFlow2007_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('34', 'M', 'CciCashFlow2007_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('35', 'M', 'CciCashFlow2007_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('36', 'M', 'CciCashFlow2007_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('37', 'M', 'CciBusiUnitAssetsLia_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('38', 'M', 'CciBusiUnitAssetsLia_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('39', 'M', 'CciBusiUnitAssetsLia_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('40', 'M', 'CciBusiUnitAssetsLia_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('41', 'M', 'CciBusiUnitAssetsLia_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('42', 'M', 'CciBusiUnitAssetsLia_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('43', 'M', 'CciBusiUnitRevenue_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('44', 'M', 'CciBusiUnitRevenue_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('45', 'M', 'CciBusiUnitRevenue_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('46', 'M', 'CciBusiUnitRevenue_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('47', 'M', 'CciBusiUnitRevenue_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('48', 'M', 'CciBusiUnitRevenue_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('49', 'M', 'CciBorrowerConcerinfoLa_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('50', 'M', 'CciBorrowerConcerinfoLa_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('51', 'M', 'CciBorrowerConcerinfoLa_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('52', 'M', 'CciBorrowerConcerinfoLa_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('53', 'M', 'CciBorrowerConcerinfoBi_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('54', 'M', 'CciBorrowerConcerinfoBi_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('55', 'M', 'CciBorrowerConcerinfoBi_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('56', 'M', 'CciBorrowerConcerinfoBi_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('57', 'M', 'CciContractInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('58', 'M', 'CciContractInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('59', 'M', 'CciContractInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('60', 'M', 'CciLoanReceiptInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('61', 'M', 'CciLoanReceiptInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('62', 'M', 'CciLoanReceiptInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('63', 'M', 'CciLoanReceiptInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('64', 'M', 'CciLoanRepayment_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('65', 'M', 'CciLoanRepayment_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('66', 'M', 'CciLoanRepayment_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('67', 'M', 'CciLoanRepayment_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('68', 'M', 'CciLoanRepayment_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('69', 'M', 'CciLoanRepayment_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('70', 'M', 'CciLoanExtensionInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('71', 'M', 'CciLoanExtensionInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('72', 'M', 'CciLoanExtensionInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('73', 'M', 'CciLoanExtensionInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('74', 'M', 'CciFactoringBusi_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('75', 'M', 'CciFactoringBusi_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('76', 'M', 'CciFactoringBusi_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('77', 'M', 'CciBillDiscountBusiInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('78', 'M', 'CciBillDiscountBusiInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('79', 'M', 'CciBillDiscountBusiInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('80', 'M', 'CciFinanceAgreementInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('81', 'M', 'CciFinanceAgreementInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('82', 'M', 'CciFinanceAgreementInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('83', 'M', 'CciFinanceBusiInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('84', 'M', 'CciFinanceBusiInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('85', 'M', 'CciFinanceBusiInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('86', 'M', 'CciFinanceBusiInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('87', 'M', 'CciFinanceBusiRepayInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('88', 'M', 'CciFinanceBusiRepayInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('89', 'M', 'CciFinanceBusiRepayInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('90', 'M', 'CciFinanceBusiRepayInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('91', 'M', 'CciFinanceBusiRepayInfo_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('92', 'M', 'CciFinanceBusiRepayInfo_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('93', 'M', 'CciFinanceBusiExtenInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('94', 'M', 'CciFinanceBusiExtenInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('95', 'M', 'CciFinanceBusiExtenInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('96', 'M', 'CciFinanceBusiExtenInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('97', 'M', 'CciCreditLetterInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('98', 'M', 'CciCreditLetterInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('99', 'M', 'CciCreditLetterInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('100', 'M', 'CciIndemnityBusi_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('101', 'M', 'CciIndemnityBusi_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('102', 'M', 'CciIndemnityBusi_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('103', 'M', 'CciBankAcceptBusiInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('104', 'M', 'CciBankAcceptBusiInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('105', 'M', 'CciBankAcceptBusiInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('106', 'M', 'CciPublicCreditInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('107', 'M', 'CciPublicCreditInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('108', 'M', 'CciGuaranteeContractInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('109', 'M', 'CciGuaranteeContractInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('110', 'M', 'CciGuaranteeContractInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('111', 'M', 'CciGuaranteeContractInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('112', 'M', 'CciMortgageContractInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('113', 'M', 'CciMortgageContractInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('114', 'M', 'CciMortgageContractInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('115', 'M', 'CciMortgageContractInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('116', 'M', 'CciPledgeContractInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('117', 'M', 'CciPledgeContractInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('118', 'M', 'CciPledgeContractInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('119', 'M', 'CciPledgeContractInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('120', 'M', 'CciGuaranteeConInfoNa_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('121', 'M', 'CciGuaranteeConInfoNa_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('122', 'M', 'CciGuaranteeConInfoNa_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('123', 'M', 'CciGuaranteeConInfoNa_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('124', 'M', 'CciMortgageConInfoNa_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('125', 'M', 'CciMortgageConInfoNa_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('126', 'M', 'CciMortgageConInfoNa_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('127', 'M', 'CciMortgageConInfoNa_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('128', 'M', 'CciPledgeContractInfoNa_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('129', 'M', 'CciPledgeContractInfoNa_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('130', 'M', 'CciPledgeContractInfoNa_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('131', 'M', 'CciPledgeContractInfoNa_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('132', 'M', 'CciAdvanceBusinessInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('133', 'M', 'CciAdvanceBusinessInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('134', 'M', 'CciBusiInterestOweInfo_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('135', 'M', 'CciBusiInterestOweInfo_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('136', 'M', 'CciBusiInterestOweInfo_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('137', 'M', 'CciBusiInterestOweInfo_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('138', 'M', 'CciAssetsDisposalBusi_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('139', 'M', 'CciAssetsDisposalBusi_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('140', 'M', 'CciAssetsDisposalBusi_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('141', 'M', 'CciAssetsDisposalBusi_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('142', 'M', 'CciAssetsDisposalBusi_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('143', 'M', 'CciCreBusiDataDelReq_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('144', 'M', 'CciCreBusiDataDelReq_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('145', 'M', 'CciCreBusiDataDelReq_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('146', 'M', 'CciCreBusiDataDelReq_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('147', 'M', 'CciOrginfoBasic_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('148', 'M', 'CciOrginfoBasic_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('149', 'M', 'CciOrginfoImportRelCor_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('150', 'M', 'CciOrginfoImportRelCor_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('151', 'M', 'CciOrginfoImportsh_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('152', 'M', 'CciOrginfoImportsh_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('153', 'M', 'CciOrginfoExecutiveRela_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('154', 'M', 'CciOrginfoExecutiveRela_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('155', 'M', 'CciOrginfoExecutiveRela_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('156', 'M', 'CciOrginfoExecutiveRela_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('157', 'M', 'CciOrginfoExecutiveRela_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('158', 'M', 'CciOrginfoFamilyMembers_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('159', 'M', 'CciOrginfoFamilyMembers_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('160', 'M', 'CciOrginfoFamilyMembers_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('161', 'M', 'CciOrginfoFamilyMembers_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('162', 'M', 'CciOrginfoFamilyMembers_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('163', 'M', 'CciOrginfoFamilyMembers_006', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('164', 'M', 'CciOrginfoDelete_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('165', 'M', 'CciOrginfoDelete_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('166', 'M', 'CciOrginfoFamilyMemDel_001', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('167', 'M', 'CciOrginfoFamilyMemDel_002', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('168', 'M', 'CciOrginfoFamilyMemDel_003', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('169', 'M', 'CciOrginfoFamilyMemDel_004', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('170', 'M', 'CciOrginfoFamilyMemDel_005', null, null, null);

insert into COM_CONTROL_MAPPING (ID, OPT_ID, CTRL_PROXY_ID, BAT_DATE, TASK_ID, STEP_ID)
values ('171', 'M', 'CciOrginfoFamilyMemDel_006', null, null, null);
