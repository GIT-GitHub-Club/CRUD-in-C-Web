using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void lblinsert_Click(object sender, EventArgs e)
        {
            // Response.Write(((TextBox)GridView1.FooterRow.FindControl("FirstName")).Text);
            SqlDataSource1.InsertParameters["EmployeeID"].DefaultValue = "8";
            SqlDataSource1.InsertParameters["EmployeeFirstName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FirstName")).Text;
            SqlDataSource1.InsertParameters["EmployeeLastName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("LastName")).Text;
            SqlDataSource1.InsertParameters["EmployeeDeprtment"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Department")).Text;
            SqlDataSource1.InsertParameters["EmployeeSalary"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Salary")).Text;
            SqlDataSource1.InsertParameters["EmployeeMoNo"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("MoNo")).Text;

            SqlDataSource1.Insert();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}