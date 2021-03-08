using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label4.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,yemekid) values(@y1,@y2,@y3,@y4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@y1", TxtAdSoyad.Text);
            komut3.Parameters.AddWithValue("@y2", TxtMail.Text);
            komut3.Parameters.AddWithValue("@y3", TxtYorum.Text);
            komut3.Parameters.AddWithValue("@y4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}