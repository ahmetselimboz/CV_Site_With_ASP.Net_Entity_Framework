using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class HakkımdaGüncelle : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();
        TBLHAKKIMDA h = new TBLHAKKIMDA();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var kay = db.TBLHAKKIMDA.Find(x);
                TextBox1.Text = kay.EGITIM;
                TextBox2.Text = kay.HAKKIMDA;
                TextBox3.Text = kay.ISDENEYIMLERI;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var kay = db.TBLHAKKIMDA.Find(x);
            kay.EGITIM = TextBox1.Text;
            kay.HAKKIMDA = TextBox2.Text;
            kay.ISDENEYIMLERI = TextBox3.Text;
            db.SaveChanges();
            Response.Redirect("Hakkimda.aspx");
        }
    }
}