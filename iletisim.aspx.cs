using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        void temizle()
        {
            TxtGonderen.Text = "";
            TxtKonu.Text = "";
            TxtMail.Text = "";
            TxtMesaj.Text = "";

        }
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@p2", TxtKonu.Text);
            komut.Parameters.AddWithValue("@p3", TxtMail.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            temizle();

        }
    }
}