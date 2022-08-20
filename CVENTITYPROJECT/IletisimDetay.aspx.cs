using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class İletişimDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();

            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var kay = db.TBLILETISIM.Find(x);
                Label3.Text = kay.ADSOYAD;
                TextBox1.Text = kay.MESAJ;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Iletisim.aspx");
        }
    }
}