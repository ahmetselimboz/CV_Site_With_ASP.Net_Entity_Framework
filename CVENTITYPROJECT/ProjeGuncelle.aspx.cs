using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class ProjeGüncelle : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();
        TBLPROJELER p = new TBLPROJELER();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var prj = db.TBLPROJELER.Find(x);
                TextBox1.Text = prj.PROJEAD;
                TextBox2.Text = prj.PROJEDETAY;

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int x = int.Parse(Request.QueryString["ID"]);
            var kay = db.TBLPROJELER.Find(x);
            kay.PROJEAD = TextBox1.Text;
            kay.PROJEDETAY = TextBox2.Text;
            db.SaveChanges();
            Response.Redirect("Projeler.aspx");
            
            
        }
    }
}