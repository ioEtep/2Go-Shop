using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webpages_Cadastro_Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(txtDataNas.Text);

        String dataCorreta = dt.ToString("yyyy/MM/dd");

        sqlCliente.InsertParameters["Dtnasc"].DefaultValue = dataCorreta;

        sqlCliente.Insert();
    }
}