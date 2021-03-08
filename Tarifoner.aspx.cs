using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        void temizle()
        {
            TxtMail.Text = "";
            TxtMalzemeler.Text = "";
            TxtTarifAd.Text = "";
            TxtTarifOneren.Text = "";
            TxtYapilis.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@p4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@p6", TxtMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            temizle();
            Response.Write("Tarifiniz alınmıştır.");

        }
    }
}