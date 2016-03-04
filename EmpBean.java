package beans;

import java.sql.SQLException;

import javax.sql.rowset.CachedRowSet;

import oracle.jdbc.rowset.OracleCachedRowSet;

public class EmpBean {
	private String url ="jdbc:oracle:thin:@localhost:1521:XE";
	private String uid = "hr";
	private String pwd = "hr";
	
	public CachedRowSet getEmp(int deptid) throws SQLException
	{
		CachedRowSet cr = new OracleCachedRowSet();
		cr.setUrl(url);
		cr.setUsername(uid);
		cr.setPassword(pwd);
		cr.setCommand("select * from employees where department_id=" + deptid);
		cr.execute();
		
		return cr;
	}

}
