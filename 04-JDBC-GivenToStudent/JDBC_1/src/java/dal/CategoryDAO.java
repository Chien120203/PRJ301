/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author Đàm Quang Chiến
 */
public class CategoryDAO extends DBContext {

    public List<Category> getData() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("ID"), rs.getString("name"), rs.getString("describe"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertData(Category c) throws SQLException {
        String sql = "INSERT INTO [dbo].[Categories]\n"
                + "           ([ID]\n"
                + "           ,[name]\n"
                + "           ,[describe])\n"
                + "     VALUES\n"
                + "           (?, ?, ?)";
        PreparedStatement st = connection.prepareStatement(sql);
        st.setInt(1, c.getId());
        st.setString(2, c.getName());
        st.setString(3, c.getDescribe());
        st.executeUpdate();
    }
    
    public Category getCategoryById(int id) throws SQLException{
        String sql = "SELECT * FROM dbo.Categories where id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Category c = new Category(rs.getInt("ID"), rs.getString("name"), rs.getString("describe"));
                return c;
            }
            else return null;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

//    public static void main(String[] args) {
//        CategoryDAO c = new CategoryDAO();
//        List<Category> list = c.getData();
//        for(Category c1 : list){
//            System.out.println(c1.toString());
//        }
//    }
}
