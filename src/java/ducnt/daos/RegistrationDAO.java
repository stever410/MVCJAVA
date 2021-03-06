/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ducnt.daos;

import ducnt.db.MyConnection;
import ducnt.dtos.RegistrationDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ngota
 */
public class RegistrationDAO {

    Connection conn = null;
    PreparedStatement preStm = null;
    ResultSet rs = null;

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (preStm != null) {
            preStm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }

    public String checkLogin(String username, String password) throws Exception {
        String role = "failed";
        try {
            String sql = "Select Role From Registration Where Username=? And Password=?";
            conn = MyConnection.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            preStm.setString(2, password);
            rs = preStm.executeQuery();
            if (rs.next()) {
                role = rs.getString("Role");
            }
        } finally {
            closeConnection();
        }
        return role;
    }

    public List<RegistrationDTO> findByLikeName(String search) throws Exception {
        List<RegistrationDTO> result = null;
        String username, fullname, role;
        RegistrationDTO dto = null;
        try {
            conn = MyConnection.makeConnection();
            String sql = "Select Username, Fullname, Role "
                    + "From Registration "
                    + "Where Fullname Like ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + search + "%");
            rs = preStm.executeQuery();
            result = new ArrayList<RegistrationDTO>();
            while(rs.next()) {
                username = rs.getString("Username");
                fullname = rs.getString("Fullname");
                role = rs.getString("Role");
                dto = new RegistrationDTO(username, fullname, role);
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
}
