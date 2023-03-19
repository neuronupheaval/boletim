using Boletim.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Boletim
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) // <-- Only populates the Grid View at first load.
            {
                // Binding data to Repeater.
                rptAlunos.DataSource = BoletinsAlunos.Dados.OrderBy(o => o.NomeAluno).ThenBy(t => t.Materia).GroupBy(g => g.NomeAluno);
                rptAlunos.DataBind();

                // Binding data to Grid View.
                gvBoletim.DataSource = BoletinsAlunos.Dados;
                gvBoletim.DataBind();
            }
        }
    }
}