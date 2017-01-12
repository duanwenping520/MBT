------------------------------------------------------
-- Export file for user MBT                         --
-- Created by CN-MRCH-MBTDEV on 2017/1/12, 13:57:10 --
------------------------------------------------------

spool hub_table.log

prompt
prompt Creating table LS_CEP1
prompt ======================
prompt
create table MBT.LS_CEP1
(
  CHLEN   CHAR(4),
  CHINTP  CHAR(2),
  CHINCL  CHAR(1),
  CHBKCD  CHAR(11),
  CHCCID  CHAR(16),
  CHLGI   CHAR(1),
  CHLMTY  CHAR(3),
  CHLINE  CHAR(2),
  CHSCSR  NUMBER(3),
  CHMCID  CHAR(60),
  CHCRPTY CHAR(1),
  CHIOTP  CHAR(1),
  CHCPDT  NUMBER(8),
  CHIRTD  NUMBER(20),
  CHINCL2 CHAR(1),
  CHPCID  CHAR(60),
  CHNAME  CHAR(80),
  CHCCID2 CHAR(16),
  CHCYCD  CHAR(3),
  CHAMOU  NUMBER(20),
  CHSTDT  NUMBER(8),
  CHPLTY  CHAR(1),
  CHSTUS  CHAR(1),
  CHDCB   NUMBER(3),
  CHDCS   NUMBER(6),
  CHCSTS  CHAR(1),
  CHDLUP  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CEP1
  is '保证合同信息';
comment on column MBT.LS_CEP1.CHLEN
  is 'Account Record Length
';
comment on column MBT.LS_CEP1.CHINTP
  is 'Message Type
';
comment on column MBT.LS_CEP1.CHINCL
  is 'Message Clarification
';
comment on column MBT.LS_CEP1.CHBKCD
  is 'Financial Institution Code
';
comment on column MBT.LS_CEP1.CHCCID
  is 'Loan Card Number';
comment on column MBT.LS_CEP1.CHLGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CEP1.CHLMTY
  is 'Limit Type ***';
comment on column MBT.LS_CEP1.CHLINE
  is 'Facility Line No';
comment on column MBT.LS_CEP1.CHSCSR
  is 'Security Serial';
comment on column MBT.LS_CEP1.CHMCID
  is 'Main Contract ID';
comment on column MBT.LS_CEP1.CHCRPTY
  is 'Credit Service Type';
comment on column MBT.LS_CEP1.CHIOTP
  is 'Info Trace Type';
comment on column MBT.LS_CEP1.CHCPDT
  is 'Capture Date';
comment on column MBT.LS_CEP1.CHIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CEP1.CHINCL2
  is 'Info Classification';
comment on column MBT.LS_CEP1.CHPCID
  is 'Pledge Contract ID';
comment on column MBT.LS_CEP1.CHNAME
  is 'Pledge Name';
comment on column MBT.LS_CEP1.CHCCID2
  is 'Credit Card ID';
comment on column MBT.LS_CEP1.CHCYCD
  is 'Currency';
comment on column MBT.LS_CEP1.CHAMOU
  is 'Pledge Amount';
comment on column MBT.LS_CEP1.CHSTDT
  is 'Contract Start Date';
comment on column MBT.LS_CEP1.CHPLTY
  is 'Pledge Type';
comment on column MBT.LS_CEP1.CHSTUS
  is 'Contract Status';
comment on column MBT.LS_CEP1.CHDLUP
  is 'Last update Date';

prompt
prompt Creating table LS_CEP2
prompt ======================
prompt
create table MBT.LS_CEP2
(
  CILEN   CHAR(4),
  CIINTP  CHAR(2),
  CIINCL  CHAR(1),
  CIBKCD  CHAR(11),
  CICCID  CHAR(16),
  CILGI   CHAR(1),
  CILMTY  CHAR(3),
  CILINE  CHAR(2),
  CISCSR  NUMBER(3),
  CIMCID  CHAR(60),
  CICRPTY CHAR(1),
  CIIOTP  CHAR(1),
  CICPDT  NUMBER(8),
  CIIRTD  NUMBER(20),
  CIINCL2 CHAR(1),
  CIMGID  CHAR(60),
  CIMGSN  NUMBER(2),
  CINAME  CHAR(80),
  CICCID2 CHAR(16),
  CIOPTN1 CHAR(3),
  CIOPTN2 CHAR(20),
  CIOPTN3 CHAR(8),
  CIOPTN4 CHAR(80),
  CIOPTN5 CHAR(10),
  CISTDT  NUMBER(8),
  CIMGTY  CHAR(1),
  CICYCD  CHAR(3),
  CIAMOU  NUMBER(20),
  CIGOVN  CHAR(80),
  CISTDT2 NUMBER(8),
  CIDETL  CHAR(400),
  CISTUS  CHAR(1),
  CIDCB   NUMBER(3),
  CIDCS   NUMBER(6),
  CICSTS  CHAR(1),
  CIDLUP  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CEP2
  is '抵押合同信息';
comment on column MBT.LS_CEP2.CILEN
  is 'Account Record Length';
comment on column MBT.LS_CEP2.CIINTP
  is 'Message Type';
comment on column MBT.LS_CEP2.CIINCL
  is 'Message Clarification';
comment on column MBT.LS_CEP2.CIBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CEP2.CICCID
  is 'Loan Card Number';
comment on column MBT.LS_CEP2.CILGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CEP2.CILMTY
  is 'Limit Type ***';
comment on column MBT.LS_CEP2.CILINE
  is 'Facility Line No';
comment on column MBT.LS_CEP2.CISCSR
  is 'Security Serial';
comment on column MBT.LS_CEP2.CIMCID
  is 'Main Contract ID';
comment on column MBT.LS_CEP2.CICRPTY
  is 'Credit Service Type';
comment on column MBT.LS_CEP2.CIIOTP
  is 'Info Trace Type';
comment on column MBT.LS_CEP2.CICPDT
  is 'Capture Date';
comment on column MBT.LS_CEP2.CIIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CEP2.CIINCL2
  is 'Info Classification';
comment on column MBT.LS_CEP2.CIMGID
  is 'Mortagage Contract ID';
comment on column MBT.LS_CEP2.CIMGSN
  is 'Mortagage Seq';
comment on column MBT.LS_CEP2.CINAME
  is 'Pledge Name';
comment on column MBT.LS_CEP2.CICCID2
  is 'Credit Card ID';
comment on column MBT.LS_CEP2.CIOPTN1
  is 'Currency';
comment on column MBT.LS_CEP2.CIOPTN2
  is 'Mortagage Evaluate';
comment on column MBT.LS_CEP2.CIOPTN3
  is 'Evaludate Date';
comment on column MBT.LS_CEP2.CIOPTN4
  is 'Evaludate Party';
comment on column MBT.LS_CEP2.CIOPTN5
  is 'Evaludate Party Code';
comment on column MBT.LS_CEP2.CISTDT
  is 'Contract Start Date';
comment on column MBT.LS_CEP2.CIMGTY
  is 'Mortagage Type';
comment on column MBT.LS_CEP2.CICYCD
  is 'Currency';
comment on column MBT.LS_CEP2.CIAMOU
  is 'Pledge Amount';
comment on column MBT.LS_CEP2.CIGOVN
  is 'Government';
comment on column MBT.LS_CEP2.CISTDT2
  is 'Register Date';
comment on column MBT.LS_CEP2.CIDETL
  is 'Mortagage Description';
comment on column MBT.LS_CEP2.CISTUS
  is 'Contract Status';
comment on column MBT.LS_CEP2.CIDLUP
  is 'Last Update Date';

prompt
prompt Creating table LS_CEP3
prompt ======================
prompt
create table MBT.LS_CEP3
(
  CJLEN   CHAR(4),
  CJINTP  CHAR(2),
  CJINCL  CHAR(1),
  CJBKCD  CHAR(11),
  CJCCID  CHAR(16),
  CJLGI   CHAR(1),
  CJLMTY  CHAR(3),
  CJLINE  CHAR(2),
  CJSCSR  NUMBER(3),
  CJMCID  CHAR(60),
  CJCRPTY CHAR(1),
  CJIOTP  CHAR(1),
  CJCPDT  NUMBER(8),
  CJIRTD  NUMBER(20),
  CJINCL2 CHAR(1),
  CJPGID  CHAR(60),
  CJPGSN  NUMBER(2),
  CJNAME  CHAR(80),
  CJCCID2 CHAR(16),
  CJCYCD  CHAR(3),
  CJVALU  NUMBER(20),
  CJSTDT  NUMBER(8),
  CJPGTY  CHAR(1),
  CJCYCD2 CHAR(3),
  CJAMOU  NUMBER(20),
  CJSTUS  CHAR(1),
  CJDCB   NUMBER(3),
  CJDCS   NUMBER(6),
  CJCSTS  CHAR(1),
  CJDLUP  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CEP3
  is '质押合同信息';
comment on column MBT.LS_CEP3.CJLEN
  is 'Account Record Length';
comment on column MBT.LS_CEP3.CJINTP
  is 'Message Type';
comment on column MBT.LS_CEP3.CJINCL
  is 'Message Clarification';
comment on column MBT.LS_CEP3.CJBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CEP3.CJCCID
  is 'Loan Card Number';
comment on column MBT.LS_CEP3.CJLGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CEP3.CJLMTY
  is 'Limit Type ***';
comment on column MBT.LS_CEP3.CJLINE
  is 'Facility Line No';
comment on column MBT.LS_CEP3.CJSCSR
  is 'Security Serial';
comment on column MBT.LS_CEP3.CJMCID
  is 'Main Contract ID';
comment on column MBT.LS_CEP3.CJCRPTY
  is 'Credit Service Type';
comment on column MBT.LS_CEP3.CJIOTP
  is 'Info Trace Type';
comment on column MBT.LS_CEP3.CJCPDT
  is 'Capture Date';
comment on column MBT.LS_CEP3.CJIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CEP3.CJINCL2
  is 'Info Classification';
comment on column MBT.LS_CEP3.CJPGID
  is 'Pledge Contract ID';
comment on column MBT.LS_CEP3.CJPGSN
  is 'Pledge Seq';
comment on column MBT.LS_CEP3.CJNAME
  is 'Pledge Name';
comment on column MBT.LS_CEP3.CJCCID2
  is 'Credit Card ID';
comment on column MBT.LS_CEP3.CJCYCD
  is 'Currency';
comment on column MBT.LS_CEP3.CJVALU
  is 'Pledge Value';
comment on column MBT.LS_CEP3.CJSTDT
  is 'Contract Start Date';
comment on column MBT.LS_CEP3.CJPGTY
  is 'Mortagage Type';
comment on column MBT.LS_CEP3.CJCYCD2
  is 'Currency';
comment on column MBT.LS_CEP3.CJAMOU
  is 'Pledge Amount';
comment on column MBT.LS_CEP3.CJSTUS
  is 'Contract Status';
comment on column MBT.LS_CEP3.CJDLUP
  is 'Last Update Date';

prompt
prompt Creating table LS_CLP1
prompt ======================
prompt
create table MBT.LS_CLP1
(
  CALEN   CHAR(4),
  CAINTP  CHAR(2),
  CAINCL  CHAR(1),
  CABKCD  CHAR(11),
  CACCID  CHAR(16),
  CAACID  CHAR(60),
  CALGI   CHAR(1),
  CALMTY  CHAR(3),
  CALINE  CHAR(2),
  CAIOTP  CHAR(1),
  CACPDT  NUMBER(8),
  CAIRTD  NUMBER(20),
  CAINCL2 CHAR(1),
  CANAME  CHAR(80),
  CAOPTN1 CHAR(60),
  CAAVDT  NUMBER(8),
  CAEDDT  NUMBER(8),
  CAGPIN  CHAR(1),
  CAGTIN  CHAR(1),
  CASTUS  CHAR(1),
  CADDST  CHAR(1),
  CALCDT  NUMBER(8),
  CATRID  CHAR(1),
  CALPDT  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CLP1
  is '贷款合同信息';
comment on column MBT.LS_CLP1.CALEN
  is 'Account Record Length';
comment on column MBT.LS_CLP1.CAINTP
  is 'Message Type';
comment on column MBT.LS_CLP1.CAINCL
  is 'Message Clarification';
comment on column MBT.LS_CLP1.CABKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CLP1.CACCID
  is 'Loan card code';
comment on column MBT.LS_CLP1.CAACID
  is 'Loan Contract Number';
comment on column MBT.LS_CLP1.CALGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CLP1.CALMTY
  is 'Limit Type ***';
comment on column MBT.LS_CLP1.CALINE
  is 'Facility Line No';
comment on column MBT.LS_CLP1.CAIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CLP1.CACPDT
  is 'Capture Date';
comment on column MBT.LS_CLP1.CAIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CLP1.CAINCL2
  is 'Info Type';
comment on column MBT.LS_CLP1.CANAME
  is 'Customer Name';
comment on column MBT.LS_CLP1.CAOPTN1
  is 'Credit Granting Number';
comment on column MBT.LS_CLP1.CAAVDT
  is 'Contract Value Date';
comment on column MBT.LS_CLP1.CAEDDT
  is 'Contract End DATE';
comment on column MBT.LS_CLP1.CAGPIN
  is 'Syndications Type';
comment on column MBT.LS_CLP1.CAGTIN
  is 'Guarantee Type';
comment on column MBT.LS_CLP1.CASTUS
  is 'Contract Status';
comment on column MBT.LS_CLP1.CADDST
  is 'Drawdown Status';
comment on column MBT.LS_CLP1.CALCDT
  is 'Loan Creation Date';
comment on column MBT.LS_CLP1.CATRID
  is 'Tern/Rev Loan Indicator';
comment on column MBT.LS_CLP1.CALPDT
  is 'Last update Date';

prompt
prompt Creating table LS_CLP2
prompt ======================
prompt
create table MBT.LS_CLP2
(
  CBLEN   CHAR(4),
  CBINTP  CHAR(2),
  CBINCL  CHAR(1),
  CBBKCD  CHAR(11),
  CBCCID  CHAR(16),
  CBACID  CHAR(60),
  CBLGI   CHAR(1),
  CBLMTY  CHAR(3),
  CBLINE  CHAR(2),
  CBIOTP  CHAR(1),
  CBCPDT  NUMBER(8),
  CBIRTD  NUMBER(20),
  CBINCL2 CHAR(1),
  CBCYCD  CHAR(3),
  CBAMOU  NUMBER(20),
  CBAAMU  NUMBER(20),
  CBLPDT  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CLP2
  is '贷款合同金额信息';
comment on column MBT.LS_CLP2.CBLEN
  is 'Account Record Length';
comment on column MBT.LS_CLP2.CBINTP
  is 'Message Type';
comment on column MBT.LS_CLP2.CBINCL
  is 'Message Clarification';
comment on column MBT.LS_CLP2.CBBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CLP2.CBCCID
  is 'Loan card code';
comment on column MBT.LS_CLP2.CBACID
  is 'Loan Contract Number';
comment on column MBT.LS_CLP2.CBLGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CLP2.CBLMTY
  is 'Limit Type ***';
comment on column MBT.LS_CLP2.CBLINE
  is 'Facility Line No';
comment on column MBT.LS_CLP2.CBIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CLP2.CBCPDT
  is 'Capture Date';
comment on column MBT.LS_CLP2.CBIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CLP2.CBINCL2
  is 'Info Type';
comment on column MBT.LS_CLP2.CBCYCD
  is 'Currency';
comment on column MBT.LS_CLP2.CBAMOU
  is 'Loan Contract Amount';
comment on column MBT.LS_CLP2.CBAAMU
  is 'Loan Aviable Amount';
comment on column MBT.LS_CLP2.CBLPDT
  is 'Last update Date';

prompt
prompt Creating table LS_CLP3
prompt ======================
prompt
create table MBT.LS_CLP3
(
  CCLEN   CHAR(4),
  CCINTP  CHAR(2),
  CCINCL  CHAR(1),
  CCBKCD  CHAR(11),
  CCCCID  CHAR(16),
  CCACID  CHAR(60),
  CCLGI   CHAR(1),
  CCLMTY  CHAR(3),
  CCLINE  CHAR(2),
  CCIOTP  CHAR(1),
  CCCPDT  NUMBER(8),
  CCIRTD  NUMBER(20),
  CCINCL2 CHAR(1),
  CCRPID  CHAR(60),
  CCACB   CHAR(3),
  CCACS   CHAR(6),
  CCACX   CHAR(3),
  CCCYCD  CHAR(3),
  CCLMT   NUMBER(20),
  CCBLA   NUMBER(20),
  CCDRDT  NUMBER(8),
  CCDUDT  NUMBER(8),
  CCODDT  NUMBER(8),
  CCPDTP  CHAR(1),
  CCTYPE  CHAR(1),
  CCQUAT  CHAR(1),
  CCTARG  CHAR(5),
  CCTYPE2 CHAR(2),
  CCEXID  CHAR(1),
  CCOPTN1 CHAR(2),
  CC5LVL  CHAR(1),
  CCLUBL  NUMBER(15),
  CCDIF   NUMBER(15),
  CCDEMI  CHAR(1),
  CCLPDT  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CLP3
  is '贷款合同借据信息';
comment on column MBT.LS_CLP3.CCLEN
  is 'Account Record Length';
comment on column MBT.LS_CLP3.CCINTP
  is 'Message Type';
comment on column MBT.LS_CLP3.CCINCL
  is 'Message Clarification';
comment on column MBT.LS_CLP3.CCBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CLP3.CCCCID
  is 'Loan Card code';
comment on column MBT.LS_CLP3.CCACID
  is 'Loan Contract Number';
comment on column MBT.LS_CLP3.CCLGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CLP3.CCLMTY
  is 'Limit Type ***';
comment on column MBT.LS_CLP3.CCLINE
  is 'Facility Line No';
comment on column MBT.LS_CLP3.CCIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CLP3.CCCPDT
  is 'Capture Date';
comment on column MBT.LS_CLP3.CCIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CLP3.CCINCL2
  is 'Info Type';
comment on column MBT.LS_CLP3.CCRPID
  is 'Recipient Number';
comment on column MBT.LS_CLP3.CCACB
  is 'Loan A/C Branch';
comment on column MBT.LS_CLP3.CCACS
  is 'Loan A/C Serial';
comment on column MBT.LS_CLP3.CCACX
  is 'Loan A/C Suffix';
comment on column MBT.LS_CLP3.CCCYCD
  is 'Currency';
comment on column MBT.LS_CLP3.CCLMT
  is 'Loan Recipient Amount';
comment on column MBT.LS_CLP3.CCBLA
  is 'Loan Recipient Amount';
comment on column MBT.LS_CLP3.CCDRDT
  is 'Recipient Advance Date';
comment on column MBT.LS_CLP3.CCDUDT
  is 'Recipient Due Date';
comment on column MBT.LS_CLP3.CCODDT
  is 'Original Due Date';
comment on column MBT.LS_CLP3.CCPDTP
  is 'Loan Service Type';
comment on column MBT.LS_CLP3.CCTYPE
  is 'Loan Type';
comment on column MBT.LS_CLP3.CCQUAT
  is 'Loan Property';
comment on column MBT.LS_CLP3.CCTARG
  is 'Loan Traget';
comment on column MBT.LS_CLP3.CCTYPE2
  is 'Loan Type 2';
comment on column MBT.LS_CLP3.CCEXID
  is 'Loan Extention';
comment on column MBT.LS_CLP3.CCOPTN1
  is 'Loan 4 Level Clarification';
comment on column MBT.LS_CLP3.CC5LVL
  is 'Loan 5 Level Clarification';
comment on column MBT.LS_CLP3.CCLUBL
  is 'Last Update Ledger Balance';
comment on column MBT.LS_CLP3.CCDIF
  is 'Difference';
comment on column MBT.LS_CLP3.CCDEMI
  is 'Demise Indicator';
comment on column MBT.LS_CLP3.CCLPDT
  is 'Last update Date';

prompt
prompt Creating table LS_CLP4
prompt ======================
prompt
create table MBT.LS_CLP4
(
  CDLEN   CHAR(4),
  CDINTP  CHAR(2),
  CDINCL  CHAR(1),
  CDBKCD  CHAR(11),
  CDCCID  CHAR(16),
  CDACID  CHAR(60),
  CDLGI   CHAR(1),
  CDLMTY  CHAR(3),
  CDLINE  CHAR(2),
  CDIOTP  CHAR(1),
  CDCPDT  NUMBER(8),
  CDIRTD  NUMBER(20),
  CDINCL2 CHAR(1),
  CDRPID  CHAR(60),
  CDACB   CHAR(3),
  CDACS   CHAR(6),
  CDACX   CHAR(3),
  CDRTDT  NUMBER(8),
  CDRPNO  NUMBER(4),
  CDRPWY  CHAR(2),
  CDRPAM  NUMBER(20),
  CDCYCD  CHAR(3),
  CDDEMI  CHAR(1),
  CDLPDT  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CLP4
  is '贷款合同还款信息';
comment on column MBT.LS_CLP4.CDLEN
  is 'Account Record Length';
comment on column MBT.LS_CLP4.CDINTP
  is 'Message Type';
comment on column MBT.LS_CLP4.CDINCL
  is 'Message Clarification';
comment on column MBT.LS_CLP4.CDBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CLP4.CDCCID
  is 'Loan Card code';
comment on column MBT.LS_CLP4.CDACID
  is 'Loan Contract Number';
comment on column MBT.LS_CLP4.CDLGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CLP4.CDLMTY
  is 'Limit Type ***';
comment on column MBT.LS_CLP4.CDLINE
  is 'Facility Line No';
comment on column MBT.LS_CLP4.CDIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CLP4.CDCPDT
  is 'Capture Date';
comment on column MBT.LS_CLP4.CDIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CLP4.CDINCL2
  is 'Info Type';
comment on column MBT.LS_CLP4.CDRPID
  is 'Recipient Number';
comment on column MBT.LS_CLP4.CDACB
  is 'Loan A/C Branch';
comment on column MBT.LS_CLP4.CDACS
  is 'Loan A/C Serial';
comment on column MBT.LS_CLP4.CDACX
  is 'Loan A/C Suffix';
comment on column MBT.LS_CLP4.CDRTDT
  is 'Payment Date';
comment on column MBT.LS_CLP4.CDRPNO
  is 'Payment Number';
comment on column MBT.LS_CLP4.CDRPWY
  is 'Payment Way';
comment on column MBT.LS_CLP4.CDRPAM
  is 'Payment Amount';
comment on column MBT.LS_CLP4.CDCYCD
  is 'Currency';
comment on column MBT.LS_CLP4.CDDEMI
  is 'Demise Indicator';
comment on column MBT.LS_CLP4.CDLPDT
  is 'Last update Date';

prompt
prompt Creating table LS_CLP5
prompt ======================
prompt
create table MBT.LS_CLP5
(
  CELEN   CHAR(4),
  CEINTP  CHAR(2),
  CEINCL  CHAR(1),
  CEBKCD  CHAR(11),
  CECCID  CHAR(16),
  CEACID  CHAR(60),
  CELGI   CHAR(1),
  CELMTY  CHAR(3),
  CELINE  CHAR(2),
  CEIOTP  CHAR(1),
  CECPDT  NUMBER(8),
  CEIRTD  NUMBER(20),
  CEINCL2 CHAR(1),
  CERPID  CHAR(60),
  CEACB   CHAR(3),
  CEACS   CHAR(6),
  CEACX   CHAR(3),
  CEEXNO  NUMBER(2),
  CEEXAM  NUMBER(20),
  CECYCD  CHAR(3),
  CESTDT  NUMBER(8),
  CEEDDT  NUMBER(8),
  CELPDT  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CLP5
  is '贷款合同还款信息';
comment on column MBT.LS_CLP5.CELEN
  is 'Account Record Length';
comment on column MBT.LS_CLP5.CEINTP
  is 'Message Type';
comment on column MBT.LS_CLP5.CEINCL
  is 'Message Clarification';
comment on column MBT.LS_CLP5.CEBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CLP5.CECCID
  is 'Loan Card code';
comment on column MBT.LS_CLP5.CEACID
  is 'Loan Contract Number';
comment on column MBT.LS_CLP5.CELGI
  is 'Customer Limit Group Indicator';
comment on column MBT.LS_CLP5.CELMTY
  is 'Limit Type ***';
comment on column MBT.LS_CLP5.CELINE
  is 'Facility Line No';
comment on column MBT.LS_CLP5.CEIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CLP5.CECPDT
  is 'Capture Date';
comment on column MBT.LS_CLP5.CEIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CLP5.CEINCL2
  is 'Info Type';
comment on column MBT.LS_CLP5.CERPID
  is 'Recipient Number';
comment on column MBT.LS_CLP5.CEACB
  is 'Loan A/C Branch';
comment on column MBT.LS_CLP5.CEACS
  is 'Loan A/C Serial';
comment on column MBT.LS_CLP5.CEACX
  is 'Loan A/C Suffix';
comment on column MBT.LS_CLP5.CEEXNO
  is 'Extention Number';
comment on column MBT.LS_CLP5.CEEXAM
  is 'Extention Amount';
comment on column MBT.LS_CLP5.CECYCD
  is 'Currency';
comment on column MBT.LS_CLP5.CESTDT
  is 'Extention Start Day';
comment on column MBT.LS_CLP5.CEEDDT
  is 'Extention End Day';
comment on column MBT.LS_CLP5.CELPDT
  is 'Last update Date';

prompt
prompt Creating table LS_CSP
prompt =====================
prompt
create table MBT.LS_CSP
(
  CGLEN   CHAR(4),
  CGINTP  CHAR(2),
  CGINCL  CHAR(1),
  CGBKCD  CHAR(11),
  CGCGID  CHAR(60),
  CGIOTP  CHAR(1),
  CGSCSR  NUMBER(3),
  CGLMTY  CHAR(3),
  CGLINE  CHAR(2),
  CGLGI   CHAR(1),
  CGCPDT  NUMBER(8),
  CGIRTD  NUMBER(20),
  CGINCL2 CHAR(1),
  CGNAME  CHAR(80),
  CGCCID  CHAR(16),
  CGCYCD  CHAR(3),
  CGAMOU  NUMBER(20),
  CGSTDT  NUMBER(8),
  CGDUDT  NUMBER(8),
  CGMTDT  NUMBER(8),
  CGRESN  CHAR(2),
  CGSTUS  CHAR(1),
  CGMKDT  NUMBER(8),
  CGSHDT  CHAR(9),
  CGDCB   NUMBER(3),
  CGDCS   NUMBER(6),
  CGDLUP  NUMBER(8)
)
tablespace MBT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table MBT.LS_CSP
  is '公开授信信息';
comment on column MBT.LS_CSP.CGLEN
  is 'Account Record Length';
comment on column MBT.LS_CSP.CGINTP
  is 'Message Type';
comment on column MBT.LS_CSP.CGINCL
  is 'Message Clarification';
comment on column MBT.LS_CSP.CGBKCD
  is 'Financial Institution Code';
comment on column MBT.LS_CSP.CGCGID
  is 'Credit Granting Number';
comment on column MBT.LS_CSP.CGIOTP
  is 'Info Operation Type';
comment on column MBT.LS_CSP.CGCPDT
  is 'Capture Date';
comment on column MBT.LS_CSP.CGIRTD
  is 'Info Trace Number';
comment on column MBT.LS_CSP.CGINCL2
  is 'Info Type';
comment on column MBT.LS_CSP.CGNAME
  is 'Credit Name';
comment on column MBT.LS_CSP.CGCCID
  is 'Loan Card Number';
comment on column MBT.LS_CSP.CGCYCD
  is 'Currency';
comment on column MBT.LS_CSP.CGAMOU
  is 'Credit Granting Amount';
comment on column MBT.LS_CSP.CGSTDT
  is 'Granting Start Date';
comment on column MBT.LS_CSP.CGDUDT
  is 'Granting  Due Date';
comment on column MBT.LS_CSP.CGMTDT
  is 'Granting Cancell Start Date';
comment on column MBT.LS_CSP.CGRESN
  is 'Granting Cancell Reason';
comment on column MBT.LS_CSP.CGSTUS
  is 'Available Status';
comment on column MBT.LS_CSP.CGMKDT
  is 'Change Date';
comment on column MBT.LS_CSP.CGSHDT
  is 'Short Msg Receive Date';
comment on column MBT.LS_CSP.CGDLUP
  is 'Last Update Date';


spool off
