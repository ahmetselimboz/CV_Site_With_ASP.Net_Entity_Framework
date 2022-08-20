using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater1.DataBind();
        }
    }
}