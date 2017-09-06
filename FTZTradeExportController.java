//HACN Special NO.03 start add by wxy at 20150819
package com.synesoft.ftzmis.app.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.terasoluna.fw.common.message.ResultMessages;

import com.synesoft.common.constants.ContextConst;
import com.synesoft.dataproc.service.ProcCommonService;
import com.synesoft.dp.domain.model.OrgInf;
import com.synesoft.dp.domain.model.UserInf;
import com.synesoft.ftzmis.app.common.util.DateUtil;
import com.synesoft.ftzmis.app.common.util.PropertiesUtil;
import com.synesoft.ftzmis.app.model.TradeExportForm;
import com.synesoft.ftzmis.domain.service.FTZCommonService;

/**
 * @describe:导出交易明细
 * @author 76
 * @date:20150819
 */
@Controller
@RequestMapping("FTZTradeExport")
public class FTZTradeExportController {
	public Logger logger=LoggerFactory.getLogger(this.getClass());
	@Resource
	private FTZCommonService ftzCommonService;
	@Resource
	private ProcCommonService procCommonService;
	@Resource
	private JdbcTemplate jdbcTemplate;
	@ModelAttribute
	public TradeExportForm setForm(){
		return new TradeExportForm();
	}
	
	/**
	 * @describe:查询页面初始化
	 * @param model
	 * @param form
	 * @return
	 */
	@RequestMapping("init")
	public String init(Model model,TradeExportForm form){
		//页面信息初始化
		logger.debug("导出页面初始化开始...");
		String workDay=procCommonService.queryWorkDate();
		if(null==form.getQuery_msgNo()){
			form.setQuery_submitDateStart(DateUtil.getFormatDateAddSprit(workDay));
			form.setQuery_submitDateEnd(DateUtil.getFormatDateAddSprit(workDay));
		}
		UserInf userInfo = ContextConst.getCurrentUser();
		List<OrgInf> orgList=ftzCommonService.queryOrgInfList(userInfo.getUserid());
		model.addAttribute("orgList",orgList);
		logger.debug("导出页面初始化结束...");
		return "ftzmis/FTZ_tradeExport_init";
	}
	@RequestMapping("validate")
	/**
	 * @describe:校验前台数据
	 * @param model
	 * @param form
	 * @return
	 */
	public String validate(Model model,TradeExportForm form){
		logger.debug("校验前台数据...");
		/*String query_startDate=DateUtil.getFormatDateRemoveSprit(form.getQuery_submitDateStart());
		String query_endDate=DateUtil.getFormatDateRemoveSprit(form.getQuery_submitDateEnd());
		String query_branchId=form.getQuery_branchId();
		//校验前台数据
		
		if("".equals(query_startDate)){
			ResultMessage message=ResultMessage.fromCode("e.ftzmis.tradeExport.0001");
			resultMessages.add(message);
		}
		if("".equals(query_endDate)){
			ResultMessage message=ResultMessage.fromCode("e.ftzmis.tradeExport.0002");
			resultMessages.add(message);
		}
		if("".equals(query_branchId)){
			ResultMessage message=ResultMessage.fromCode("e.ftzmis.tradeExport.0003");
			resultMessages.add(message);
		}
		if(!"".equals(query_startDate)&&!"".equals(query_endDate)){
			if(Integer.parseInt(query_startDate)>Integer.parseInt(query_endDate)){
				ResultMessage message=ResultMessage.fromCode("e.ftzmis.tradeExport.0004");
				resultMessages.add(message);
			}
		}*/
		ResultMessages resultMessages=ResultMessages.error();
		if(resultMessages.isNotEmpty()){
			model.addAttribute(resultMessages);
			model.addAttribute("orgList",ftzCommonService.queryOrgInfList(null));
			return "ftzmis/FTZ_tradeExport_init";
		}else{
			return "forward:/FTZTradeExport/export";
		}
	}
	/**
	 * @describe:导出数据
	 * @param model
	 * @param form
	 * @return
	 */
	@RequestMapping("export")
	public void export(Model model,TradeExportForm form,HttpServletRequest request,HttpServletResponse response){
		logger.debug("开始导出数据...");
		String query_startDate=DateUtil.getFormatDateRemoveSprit(form.getQuery_submitDateStart());
		String query_endDate=DateUtil.getFormatDateRemoveSprit(form.getQuery_submitDateEnd());
		String query_branchId=form.getQuery_branchId();
		String query_msgNo=form.getQuery_msgNo();
		String query_msgStatus=form.getQuery_msgStatus();
		
		//add by hhb 20151020 start
		//根据是否选择报文种类来判断是否加上所属机构的过滤条件
		boolean dateStartFlag = false;
		if(null!=query_startDate && !"".equals(query_startDate)){
			dateStartFlag = true;
		}
		
		boolean dateEndFlag = false;
		if(null!=query_endDate && !"".equals(query_endDate)){
			dateEndFlag = true;
		}
		
		boolean branchFlag = false;
		if(null!=query_branchId && !"".equals(query_branchId)){
			branchFlag = true;
		}
		
		boolean branchsFlag = false;//默认是否
		if(!"".equals(query_msgNo)&&"".equals(query_branchId)){
			branchsFlag = true;
		}
		//获取当前用户的可操作机构列表
		String branchs = "";
		UserInf userInfo = ContextConst.getCurrentUser();
		List<OrgInf> orgList = ftzCommonService.queryOrgInfList(userInfo.getUserid());
		if(null!=orgList){
			for(OrgInf orgInf:orgList){
				branchs = branchs + "'"+orgInf.getOrgid().trim()+"',";
			}
			branchs = branchs.substring(0, branchs.length()-1);
		}
		//add by hhb 20151020 end
		
		//根据日期设定flag的值(flag用于标示查询账号工作表or账号历史表)
		String flag="1";	//"0":查询工作表和历史表;"1":查询工作表;"2":查询历史表;
		String workDate=DateUtil.getWorkDate();
		if (dateStartFlag && dateEndFlag) {
			if (Integer.parseInt(query_endDate) < Integer.parseInt(workDate)) {
				flag = "2";
			}
			if (Integer.parseInt(query_endDate) == Integer.parseInt(workDate)
					&& Integer.parseInt(query_endDate) > Integer
							.parseInt(query_startDate)) {
				flag = "0";
			}
		} else {
			flag = "0";
		}
		//根据报文类型重新拼接sql语句
		Map<String,String> sqls=getSqlByMsgNo(query_msgNo, flag);
		Map<String,String> sqlMap=new HashMap<String,String>();
		Set<String> keySetTmp=sqls.keySet();
		for(String key:keySetTmp){
			String sql=sqls.get(key);
			if("210501".equals(key)||"210502".equals(key)){
				if("0".equals(flag)){
					String sql1=sql.substring(0,sql.indexOf("||"));
					String sql2=sql.substring(sql.indexOf("||")+2);
					String tableName=sql1.substring(sql1.lastIndexOf(".")-1,sql1.lastIndexOf(".")+1);
					//拼接日期
					if(dateStartFlag&&dateEndFlag){
						sql1=sql1+">='"+query_startDate+"' and "+sql1.substring(sql1.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
						sql2=sql2+">='"+query_startDate+"' and "+sql2.substring(sql2.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
					}else if(dateStartFlag &&!dateEndFlag){
						sql1=sql1+">='"+query_startDate+"'";
						sql2=sql2+">='"+query_startDate+"'";
					} else if(!dateStartFlag&&dateEndFlag){
						sql1=sql1+"<='"+query_endDate+"'";
						sql2=sql2+"<='"+query_endDate+"'";
					}else{
						sql1=sql1+">='20000101'";
						sql2=sql2+">='20000101'";
					}
//					sql1=sql1+">='"+query_startDate+"' and "+sql1.substring(sql1.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
//					sql2=sql2+">='"+query_startDate+"' and "+sql2.substring(sql2.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
					if (branchFlag) {
						//拼接机构
						sql1 = sql1 + " and " + tableName + "branch_id='"+ query_branchId + "'";
						sql2 = sql2 + " and " + tableName + "branch_id='"+ query_branchId + "'";
					}
					//拼接状态
					if(!"".equals(query_msgStatus)){
						sql1=sql1+" and "+tableName+"msg_status='"+query_msgStatus+"'";
						sql2=sql2+" and "+tableName+"msg_status='"+query_msgStatus+"'";
					}
					//拼接可操作机构 add by hhb 20151020 start
					if(branchsFlag){
						sql1 = sql1 + "and "+tableName+"branch_id in("+branchs+")";
						sql2 = sql2 + "and "+tableName+"branch_id in("+branchs+")";
					}
					//add by hhb 20151020 end
				sql=sql1+" union all "+sql2;	
				}else{
					String tableName=sql.substring(sql.lastIndexOf(".")-1,sql.lastIndexOf(".")+1);
					//拼接日期
					if(dateStartFlag&&dateEndFlag){
						sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
					} else if(dateStartFlag &&!dateEndFlag){
						sql=sql+">='"+query_startDate+"'";
					} else if(!dateStartFlag && dateEndFlag){
						sql=sql+"<='"+query_endDate+"'";
					}else {
						sql=sql+">='20000101'";
					}
//					sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
					//拼接机构
					if(branchFlag){
						sql=sql+" and "+tableName+"branch_id='"+query_branchId+"'";
					}
					//拼接状态
					if(!"".equals(query_msgStatus)){
						sql=sql+" and "+tableName+"msg_status='"+query_msgStatus+"'";
					}
					//拼接可操作机构 add by hhb 20151020 start
					if(branchsFlag){
						sql = sql + "and "+tableName+"branch_id in("+branchs+")";
					}
					//add by hhb 20151020 end
				}
		
			}/*else if("210702".equals(key)||"210703".equals(key)){
				//拼接机构
				sql=sql+" where t.branch_id='"+query_branchId+"'";
				//拼接状态
				if(!"".equals(query_msgStatus)){
					sql=sql+" and t.data_status='"+query_msgStatus+"'";
				}
			}*/else if("210704".equals(key)||"210702".equals(key)||"210703".equals(key)){
				String tableName=sql.substring(sql.lastIndexOf(".")-1,sql.lastIndexOf(".")+1);
				//拼接日期
				if(dateStartFlag&&dateEndFlag){
					sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
				}else if(dateStartFlag&&!dateEndFlag){
					sql=sql+">='"+query_startDate+"'";
				}else if(!dateStartFlag&&dateEndFlag){
					sql=sql+"<='"+query_endDate+"'";
				}else{
					sql=sql+">='20000101'";
				}
//				sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
				//拼接机构
				if(branchFlag){
					sql=sql+" and "+tableName+"branch_id='"+query_branchId+"'";
				}
				//拼接状态
				if(!"".equals(query_msgStatus)){
					sql=sql+" and "+tableName+"msg_status='"+query_msgStatus+"'";
				}
				//拼接可操作机构 add by hhb 20151020 start
				if(branchsFlag){
					sql = sql + "and "+tableName+"branch_id in("+branchs+")";
				}
				
			}else{
				String tableName=sql.substring(sql.lastIndexOf(".")-1,sql.lastIndexOf(".")+1);
				//拼接日期
				if(dateStartFlag && dateEndFlag){
					sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
				}else if(dateStartFlag && !dateEndFlag){
					sql=sql+">='"+query_startDate+"'";
				} else if (!dateStartFlag && dateEndFlag){
					sql=sql+"<='"+query_endDate+"'";
				} else {
					sql=sql+">='20000101'";
				}
//				sql=sql+">='"+query_startDate+"' and "+sql.substring(sql.lastIndexOf(".")-1)+"<='"+query_endDate+"'";
				//拼接机构
				if(branchFlag){
					sql=sql+" and "+tableName+"branch_id='"+query_branchId+"'";
				}
				//拼接状态
				if(!"".equals(query_msgStatus)){
					sql=sql+" and "+tableName+"msg_status='"+query_msgStatus+"'";
				}
				//拼接可操作机构 add by hhb 20151020 start
				if(branchsFlag){
					sql = sql + "and "+tableName+"branch_id in("+branchs+")";
				}
			}
			System.out.println("========="+sql);
			logger.debug("====报文类型："+key+"；查询sql："+sql);
			sqlMap.put(key, sql);
		}
		//读取模板文件到内存中,生成excel对象
		InputStream inputStream = FTZTradeExportController.class.getClassLoader()
				.getResourceAsStream("report36.xlsx");
		XSSFWorkbook wb = null;
		try {
			wb = new XSSFWorkbook(inputStream);
		} catch (IOException e) {
		}finally{
			try{	
				if(null!=inputStream){
					inputStream.close();
				}
			}catch(Exception e){
			}
		}
		//从数据库中查询数据，并写入excel对象
		int m=0;
		Set<String> keySet=sqlMap.keySet();
		for(String key1:keySet){
			String sql=sqlMap.get(key1);
			List<Map<String, Object>> list=jdbcTemplate.queryForList(sql);
			XSSFSheet sheet =null;
			if(!"".equals(query_msgNo)){	//查询某一个报文
				sheet= (XSSFSheet) wb.getSheet(query_msgNo);	
			}else{							//查询所有报文
				sheet = (XSSFSheet) wb.getSheet(key1);	//根据sheet的名字，获取到sheet对象
			}
			if(list.size()>0){
				for(int j=0;j<list.size();j++){
					Map<String, Object> row = list.get(j);
					Set<String> keys = row.keySet();
					XSSFRow xssfrow = sheet.createRow(j+1);
					int k=0;
					for(String key:keys){
						Object value = row.get(key);
						if(null!=row.get(key)){
							value = value.toString();
						}
						XSSFCell cell = xssfrow.createCell(k);
						String str=(String)value;
						str=(null==str)?"":new String(str.getBytes());
						/*cell.setCellType(XSSFCell.CELL_TYPE_STRING);*/
						cell.setCellValue(str);
						k++;
					}
					
				}
			}
			m++;
			if(m>=sqls.size()){
				break;
			}
		}

		//将数据保存
		XSSFWorkbook resultBook=new XSSFWorkbook();
		if(!"".equals(query_msgNo)){
			XSSFSheet sheet=wb.getSheet(query_msgNo);
			XSSFSheet resultSheet=resultBook.createSheet(query_msgNo);
			int rows = sheet.getLastRowNum();
			/*String csvRow = "";*/
			XSSFRow row0 = sheet.getRow(0);
			if(row0!=null){
				int cols = row0.getLastCellNum();
				for(int j=0;j<=rows;j++){
					XSSFRow row = sheet.getRow(j);
					XSSFRow resultRow=resultSheet.createRow(j);
					if(row!=null){
						if(cols>1){
							//前两列不允许都为空，有则认为
							XSSFCell cell1 = row.getCell(0);
							XSSFCell cell2 = row.getCell(1);
							if(null==cell1 && null==cell2){
								break;
							}else{
								cell1.setCellType(XSSFCell.CELL_TYPE_STRING);
								cell2.setCellType(XSSFCell.CELL_TYPE_STRING);
								String value1=cell1.getStringCellValue();
								String value2=cell2.getStringCellValue();
								if((null==value1||"".equals(value1.trim()))&&(null==value2||"".equals(value2.trim()))){
									break;
								}
							}
							for(int k=0;k<cols;k++){
								XSSFCell cell = row.getCell(k);
								XSSFCell resultCell=resultRow.createCell(k);
								String value = "";
								if(null!=cell){
									cell.setCellType(XSSFCell.CELL_TYPE_STRING);
									value = new String(cell.getStringCellValue());
									resultCell.setCellType(XSSFCell.CELL_TYPE_STRING);
									resultCell.setCellValue(value);
								}			
							}
						}
					}
				}
			}
		
		}else{
			for(int i=0;i<wb.getNumberOfSheets();i++){
				XSSFSheet sheet=wb.getSheetAt(i);
				XSSFSheet resultSheet=resultBook.createSheet(sheet.getSheetName());
				int rows = sheet.getLastRowNum();
				/*String csvRow = "";*/
				XSSFRow row0 = sheet.getRow(0);
				if(row0!=null){
					int cols = row0.getLastCellNum();
					for(int j=0;j<=rows;j++){
						XSSFRow row = sheet.getRow(j);
						XSSFRow resultRow=resultSheet.createRow(j);
						if(row!=null){
							if(cols>1){
								//前两列不允许都为空，有则认为
								XSSFCell cell1 = row.getCell(0);
								XSSFCell cell2 = row.getCell(1);
								if(null==cell1 && null==cell2){
									break;
								}else{
									cell1.setCellType(XSSFCell.CELL_TYPE_STRING);
									cell2.setCellType(XSSFCell.CELL_TYPE_STRING);
									String value1=cell1.getStringCellValue();
									String value2=cell2.getStringCellValue();
									if((null==value1||"".equals(value1.trim()))&&(null==value2||"".equals(value2.trim()))){
										break;
									}
								}
								for(int k=0;k<cols;k++){
									XSSFCell cell = row.getCell(k);
									XSSFCell resultCell=resultRow.createCell(k);
									String value = "";
									if(null!=cell){
										cell.setCellType(XSSFCell.CELL_TYPE_STRING);
										value = cell.getStringCellValue();
										resultCell.setCellType(XSSFCell.CELL_TYPE_STRING);
										resultCell.setCellValue(value);
									}
									/*if(k==0){							
										csvRow += value;
									}else{
										csvRow += "," + value;
									}*/
								}
								/*csvRow += "\r\n";*/
							}
						}
					/*File newFile = new  File(path+"/sc/");
					newFile.mkdirs();
					File csvFile = new File(newFile,fileName);
					OutputStreamWriter fw = new OutputStreamWriter(new FileOutputStream(csvFile),"GBK");
					//FileWriter fw = null;
					//fw =new FileWriter();
					fw.write(csvRow);
					fw.flush();
					fw.close();*/
				}
			}
		}
	}	
		
		response.setHeader("Content-disposition", "attachment; filename=tradeExport.xlsx");// 组装附件名称和格式
		//HACN Special NO.4 start at 20151014
		//在https协议下设置缓存，防止报错
		response.setHeader("Pragma", "public"); 
		response.setHeader("Cache-Control", "public");
		//HACN Special NO.4 end at 20151014
		OutputStream out=null;
		try {
			response.setContentType("text/html;charset=UTF-8");
			out=response.getOutputStream();
			resultBook.write(out);
			out.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try{
				if(null!=out){
					out.close();
				}
			}catch(Exception e){
				
			}
		}
	}
	
	private Map<String,String> getSqlByMsgNo(String query_msgNo,String flag){
		Map<String,String> msgNoToSql =new HashMap<String, String>();
		Map<String,String> sqls=new HashMap<String, String>();
		/*List<String> sqls=new ArrayList<String>();*/
		String sqlNum=PropertiesUtil.getPropertiesValue("sql.count", "META-INF/spring/tradeExportSql.properties");
		for(int i=0;i<Integer.parseInt(sqlNum);i++){
			String str=PropertiesUtil.getPropertiesValue(""+i, "META-INF/spring/tradeExportSql.properties");
			String msgNo=str.substring(0,str.indexOf('/'));
			String[] sqlArr=str.split("/");
			String sql="";
			if("210501".equals(msgNo)||"210502".equals(msgNo)){
					if("1".equals(flag)){
						sql=sqlArr[1];
					}else if("2".equals(flag)){
						sql=sqlArr[2];
					}else if("0".equals(flag)){
						sql=sqlArr[3];
					}	
			}else{
				sql=sqlArr[1];
			}
			msgNoToSql.put(msgNo,sql);
			
		}
		if("".equals(query_msgNo)){
				sqls.putAll(msgNoToSql);
		}else{
			sqls.put(query_msgNo, msgNoToSql.get(query_msgNo));
		}
		return sqls;
	}
	/**
	 * 导出sql
	 * @param date
	 * @param flag
	 * @return
	 */
	private String[] getSqlList(String flag) {
		String []sqls = new String[39];
		sqls[0]="select d.trans_no,c.account_no,c.sub_account_no,c.currency,c.acc_org_code,d.cd_flag,d.tran_date,d.org_tran_date, d.amount, d.opp_account, d.opp_name,d.opp_bank_code, d.country_code, d.disitrict_code, d.tran_type,d.term_length,d.term_unit,d.expire_date,c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210101' and c.work_date";
		sqls[1]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date, d.amount,       d.value_date,       d.expire_date,       d.org_tran_date,       d.country_code,       d.disitrict_code,       d.tran_type,       d.term_length,       d.term_unit,       d.interest_rate,    d.issue_amount,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210102' and c.work_date";
		sqls[2]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date,       d.tran_type,       d.term_length,       d.term_unit,       d.value_date,       d.expire_date,       d.interest_rate,    d.amount,       d.country_code,       d.disitrict_code,       d.opp_account,       d.opp_name,       d.opp_bank_code,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210103' and c.work_date";
		sqls[3]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,       d.cd_flag,        d.tran_date,        d.org_tran_date,       d.amount,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        d.tran_type,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d  on c.msg_id=d.msg_id where c.msg_no='210104' and c.work_date";
		sqls[4]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.expire_date,       d.value_date,       d.org_tran_date, d.amount,       d.opp_account,       d.opp_name,       d.opp_bank_code,       d.country_code,       d.disitrict_code,       d.assets_type,        d.assets_value,     d.term_unit,       d.term_length,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210105' and c.work_date";
		sqls[5]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date,  d.amount,       d.term_length,      d.term_unit,       d.value_date,       d.expire_date,       d.opp_name,       d.interest_rate,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210106'and c.work_date";
		sqls[6]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date,   d.amount,       d.term_length,       d.term_unit,       d.interest_rate,       d.value_date,       d.expire_date,       d.opp_account,       d.opp_name,       d.opp_bank_code,       d.country_code,       d.disitrict_code,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210107' and c.work_date";
		sqls[7]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,       d.cd_flag,        d.tran_date,        d.org_tran_date,        d.amount,        d.opp_name,        d.country_code,        d.disitrict_code,        d.tran_type,              c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d  on c.msg_id=d.msg_id where c.msg_no='210108'  and c.work_date";
		sqls[8]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,       d.cd_flag,        d.tran_date,        d.org_tran_date,        d.exchange_type,        d.buy_curr, d.buy_amt,        d.buy_rate,        d.sell_curr, d.sell_amt,            d.sell_rate,                        d.opp_account,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        d.tran_type,            c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210109'  and c.work_date";
		sqls[9]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,       d.amount, d.interest_rate, d.term_length,        d.term_unit, d.value_date, d.expire_date,        d.opp_account,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        d.tran_type,             c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210110' and c.work_date";
		sqls[10]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.value_date,       d.expire_date,       d.org_tran_date,     d.amount,       d.interest_rate,       d.term_length,       d.term_unit,       d.opp_account,       d.opp_name,       d.opp_bank_code,       d.country_code,       d.disitrict_code,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210111'  and c.work_date";
		sqls[11]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.amount,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210112'  and c.work_date";
		sqls[12]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,            d.tran_type,      d.amount,                d.country_code,        d.disitrict_code,    d.opp_account,        d.opp_name, d.document_type, d.document_no, d.loan_type,        d.term_length,        d.term_unit,          d.value_date,        d.expire_date,        d.interest_rate,        d.overdue,        c.branch_id, d.flow_flag, d.rec_account, d.rec_name, d.rec_country_code, d.rec_district_code from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210201' and c.work_date";
		sqls[13]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date, d.amount,       d.country_code,       d.disitrict_code,       d.securities_type,       d.securities_code,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210202' and c.work_date";
		sqls[14]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date,       d.tran_type,         d.amount,       d.country_code,       d.disitrict_code,       d.opp_account,       d.opp_name,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210203' and c.work_date";
		sqls[15]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,       d.amount,        d.tran_type,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210204'   and c.work_date";
		sqls[16]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.tran_date,       d.org_tran_date,       d.value_date,       d.expire_date,      d.amount,       d.opp_cus_type,       d.opp_account,       d.opp_name,       d.country_code,       d.disitrict_code,       d.assets_type,     d.assets_value,       d.term_unit,       d.term_length,       d.tran_type,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210205'  and c.work_date";
		sqls[17]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,         d.amount,        d.value_date,        d.interest_rate,        d.tran_type,        d.country_code,        d.disitrict_code,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210206' and c.work_date";
		sqls[18]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,        d.amount,        d.term_length,       d.term_unit,        d.value_date,        d.expire_date,        d.interest_rate,        d.tran_type,        d.country_code,        d.disitrict_code,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210207'  and c.work_date";
		sqls[19]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,        d.amount,        d.term_length,        d.term_unit,        d.value_date,        d.expire_date,        d.interest_rate,        d.tran_type,        d.country_code,        d.disitrict_code,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210208' and c.work_date";
		sqls[20]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,       d.amount,        d.term_length,			d.term_unit,        d.value_date,        d.expire_date,        d.interest_rate,        d.opp_account,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        d.tran_type,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d on c.msg_id=d.msg_id where c.msg_no='210209' and c.work_date";
		sqls[21]="select d.trans_no,       c.account_no,       c.currency,       c.acc_org_code,       d.cd_flag,       d.amount,       c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210211' and c.work_date";
		sqls[22]="select d.trans_no,       d.bonds_code,       d.bonds_name,       d.account_no,       d.currency,       d.submit_date,       d.institution_code,       d.tran_date,       d.term_length,       d.term_unit,       d.expiration_date,       d.amount,       d.country_code,       d.district_code,       d.tran_type,       d.interest_type,       d.interest_rate,       d.benchmark,       d.float_rate,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210301' and c.work_date";
		sqls[23]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.tran_date,       d.expiration_date,       d.term_condition,       d.term_length,       d.term_unit,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210302'  and c.work_date";
		sqls[24]="select d.trans_no,       d.submit_date,       d.acc_org_code,     d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.expiration_date,       d.lg_type,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210303'  and c.work_date";
		sqls[25]="select d.trans_no,       d.submit_date,       d.acc_org_code,      d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.expiration_date,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210304' and c.work_date";
		sqls[26]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.tran_date,       d.expiration_date,      d.amount,       d.currency,       d.account_no,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d  on c.msg_id=d.msg_id where c.msg_no='210305' and c.work_date";
		sqls[27]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.tran_date,       d.expiration_date,       d.term_condition,       d.term_length,      d.term_unit,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210306' and c.work_date";
		sqls[28]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.expiration_date,       d.lg_type,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210307' and c.work_date";
		sqls[29]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.amount,       d.currency,       d.swift_code,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       d.expiration_date,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210308' and c.work_date";
		sqls[30]="select d.trans_no,       d.submit_date,       d.tran_date,       d.acc_org_code,       d.expiration_date,       d.amount,       d.currency,       d.account_name,       d.institution_code,       d.country_code,       d.district_code,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210309' and c.work_date";
		sqls[31]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.tran_genre,       d.buy_curr,       d.buy_amt,       d.buy_rate,       d.sell_curr,        d.sell_amt,       d.sell_rate,       d.tran_date,       d.expiration_date,       d.account_no,       d.account_name,       d.swift_code,       d.country_code,       d.district_code,       d.tran_type,       c.branch_id, d.exchange_type from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210310' and c.work_date";
		sqls[32]="select d.trans_no,       d.submit_date,       d.acc_org_code,       d.tran_genre,       d.exchange_type,       d.buy_curr,       d.buy_amt,       d.buy_rate,       d.sell_curr,       d.sell_amt,       d.sell_rate,       d.tran_date,       d.account_no,       d.account_name,       d.swift_code,       d.country_code,       d.district_code,       d.tran_type,       c.branch_id from ftz_off_msg_ctl c left join ftz_off_txn_dtl d   on c.msg_id=d.msg_id where c.msg_no='210311' and c.work_date";
		sqls[33]="select  d.trans_no,        c.account_no,        c.currency,        c.acc_org_code,        d.cd_flag,        d.tran_date,        d.org_tran_date,       d.amount,        d.term_length,        d.term_unit,        d.interest_rate,        d.value_date,        d.expire_date,        d.opp_account,        d.opp_name,        d.opp_bank_code,        d.country_code,        d.disitrict_code,        d.tran_type,        c.branch_id from ftz_in_msg_ctl c left join ftz_in_txn_dtl d   on c.msg_id=d.msg_id where msg_no='210401' and c.work_date";
		if("1".equals(flag)){
			sqls[34]="select m.account_name,       m.dept_type,       m.balance_code,       m.account_no,       m.sub_account_no,       m.currency,       m.acc_type,       m.document_type,       m.document_no,       m.acc_status,       m.acc_org_code,       m.opertype,       m.submit_date,       m.deposit_rate,       m.custom_type,       m.balance,       m.branch_id from ftz_act_mstr m where acc_type!='IN' and m.submit_date";
			sqls[35]="select m.account_no,       m.currency,       m.acc_org_code,       m.balance_code,       m.submit_date,     m.balance,       m.branch_id  from ftz_act_mstr m where m.acc_type='IN' and m.submit_date";
		}else if("2".equals(flag)){
			sqls[34]="select m.account_name,       m.dept_type,       m.balance_code,       m.account_no,       m.sub_account_no,       m.currency,       m.acc_type,       m.document_type,       m.document_no,       m.acc_status,       m.acc_org_code,       m.opertype,       m.submit_date,       m.deposit_rate,       m.custom_type,        m.balance,       m.branch_id from ftz_act_mstr_history m where acc_type!='IN' and m.submit_date";
			sqls[35]="select m.account_no,       m.currency,       m.acc_org_code,       m.balance_code,       m.submit_date,     m.balance,       m.branch_id  from ftz_act_mstr_history m where m.acc_type='IN' and m.submit_date";
		}else if("0".equals(flag)){
			sqls[34]="select m.account_name,       m.dept_type,       m.balance_code,       m.account_no,       m.sub_account_no,       m.currency,       m.acc_type,       m.document_type,       m.document_no,       m.acc_status,       m.acc_org_code,       m.opertype,       m.submit_date,       m.deposit_rate,       m.custom_type,        m.balance,       m.branch_id from ftz_act_mstr m where acc_type!='IN' and m.submit_date"
					+"||"+"select m.account_name,       m.dept_type,       m.balance_code,       m.account_no,       m.sub_account_no,       m.currency,       m.acc_type,       m.document_type,       m.document_no,       m.acc_status,       m.acc_org_code,       m.opertype,       m.submit_date,       m.deposit_rate,       m.custom_type,        m.balance,       m.branch_id from ftz_act_mstr_history m where acc_type!='IN' and m.submit_date";
			sqls[35]="select m.account_no,       m.currency,       m.acc_org_code,       m.balance_code,       m.submit_date,     m.balance,       m.branch_id  from ftz_act_mstr m where m.acc_type='IN' and m.submit_date"
					+"||"+"select m.account_no,       m.currency,       m.acc_org_code,       m.balance_code,       m.submit_date,     m.balance,       m.branch_id  from ftz_act_mstr_history m where m.acc_type='IN' and m.submit_date";
		}
		sqls[36]="select t.business_no, t.submit_date, t.report_institution_code, t.report_institution_name, t.institution_code, t.institution_name, t.institution_type, t.equity_date, t.current_assets, t.long_term_investment, t.fixed_assets, t.current_liabilities, t.long_term_liabilities, t.other_liabilities, t.paid_capital, t.capital_reserve, t.surplus_reserve, t.undistributed_profit, t.owner_equity_total, t.branch_id from ftz_fi_main_inf t where t.submit_date";
		sqls[37]="select t.oper_type, t.business_no, t.finance_bussiness_no, t.report_institution_code, t.submit_date, t.contract_no, t.finance_type, t.main_borrowing_name, t.main_borrow_code, t.main_borrowing_type, t.term_length, t.term_unit, t.term_type, t.currency, t.sign_amount, t.value_date, t.interest_date_rate, t.expire_date, t.rate_type, t.fixed_rate, t.floating_rate_benchmark, t.floating_rate_plus, t.repayment_type, t.creditor_country_code, t.creditor_name, t.creditor_type, t.creditor_swift, t.remark, t.branch_id from ftz_fi_contract_inf t where t.submit_date";
		sqls[38]="select t.finance_bussiness_no, t.report_institution_code, t.cd_flag, t.repay_flag, t.currency, t.amount, t.tran_date, t.tran_curr, t.tran_amt, t.tran_bank_no, t.account_no, t.tran_type, t.remark, t.branch_id from ftz_fi_flow_inf t where t.tran_date";
		return sqls;
	}
}
//HACN Special NO.03 end add by wxy at 20150819