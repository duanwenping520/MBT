
--191	�￡�� MBT	20171117	
--����A129 cci_error_code
delete from cci_error_code where error_code='A129';
insert into cci_error_code (EDITION, ERROR_TYPE, ERROR_CODE, ERROR_DESCRIBE, EFFECTIVE)
values ('2.1', '������Ϣ�������', 'A129', '������¼��������num��,��Ҫ���ĵ�������,��������,�����԰���Ϊ���ڵ���', '1');

--192	��ԭ	MBT	20171127	
--չ�ڱ�־������key
update cci_download_config set format = 'CL_EXTENSION_FLAG' where head_name = 'չ�ڱ�־';


