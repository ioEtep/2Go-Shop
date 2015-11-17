using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class webpages_Login_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        DataView dv;

        dv = (DataView)sqlLogin.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count==0)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Session["logado"] = "ok";
            Response.Redirect ("admin.aspx");
        }
    }
}