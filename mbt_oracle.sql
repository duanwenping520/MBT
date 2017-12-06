
--191	孙俊豪 MBT	20171117	
--新增A129 cci_error_code
delete from cci_error_code where error_code='A129';
insert into cci_error_code (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '出错信息错误编码', 'A129', '导出记录条数大于num条,需要更改导出条件,分批导出,建议以半年为周期导出', '1');

--192	高原	MBT	20171127	
--展期标志导出是key
update cci_download_config set format = 'CL_EXTENSION_FLAG' where head_name = '展期标志';


