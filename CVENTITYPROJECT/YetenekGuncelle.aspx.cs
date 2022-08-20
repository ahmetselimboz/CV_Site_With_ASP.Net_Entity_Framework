using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class YetenekGüncelle : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var kay = db.TBLYETENEKLER.Find(x);
                TextBox1.Text = kay.YETENEK;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var kay = db.TBLYETENEKLER.Find(x);
            kay.YETENEK = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Yeeteneklerim.aspx");
        }
    }
}