/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/*
 * @author Balwant c0655613
 */
public class AuthorClass {
    
    private int a_ID;
    private String a_Name;
    private String a_DOB;
    private String a_Desc;    
    private PreparedStatement pstmt;

    /*
     * @return the a_ID
     */
    public int getA_ID() {
        return a_ID;
    }

    /*
     * @param a_ID the a_ID to set
     */
    public void setA_ID(int a_ID) {
        this.a_ID = a_ID;
    }

    /**
     * @return the a_Name
     */
    public String getA_Name() {
        return a_Name;
    }

    /**
     * @param a_Name the a_Name to set
     */
    public void setA_Name(String a_Name) {
        this.a_Name = a_Name;
    }

    /**
     * @return the a_DOB
     */
    public String getA_DOB() {
        return a_DOB;
    }

    /**
     * @param a_DOB the a_DOB to set
     */
    public void setA_DOB(String a_DOB) {
        this.a_DOB = a_DOB;
    }

    /**
     * @return the a_Desc
     */
    public String getA_Desc() {
        return a_Desc;
    }

    /**
     * @param a_Desc the a_Desc to set
     */
    public void setA_Desc(String a_Desc) {
        this.a_Desc = a_Desc;
    }
    
    public void findAutherID(String a_name){
        DbClass db = new DbClass();
        if(db.getConnection()==true){
            try {
                pstmt = (PreparedStatement) db.conn.prepareStatement("select a_ID from author where a_Name=?");
                pstmt.setString(1, a_name);
                
                ResultSet rs = pstmt.executeQuery();
                while(rs.next()){
                    this.a_ID=rs.getInt(1);
                }
                pstmt.close();
                db.endConnection();
            } catch (SQLException ex) {
                Logger.getLogger(BookClass.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
}
