using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_81022
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=ABHISHEK; initial catalog=db_81022; integrated security=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }
        public void Display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from employee", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);  // Carray the data from database
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvemployee.DataSource = dt;
            gvemployee.DataBind();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into employee(name,city,age,salary) values('"+txtname.Text+ "','" + txtcity.Text + "','" + txtage.Text + "','" + txtsalary.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Display();
        }
    }
}