using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtOnerenMail.Text = dr[6].ToString();
                    TxtTarifMalzeme.Text = dr[2].ToString();
                    TxtTarifOneren.Text = dr[5].ToString();
                    TxtYapilis.Text = dr[3].ToString();


                }
                bgl.baglanti().Close();

                //kategori Listesi
                SqlCommand komut1 = new SqlCommand("Select * from tbl_kategori", bgl.baglanti());
                SqlDataReader dr1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }
           

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            // Güncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set Tarifdurum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Anasayfaya Ekleme
            SqlCommand komut1 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4) ", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut1.Parameters.AddWithValue("@p2", TxtTarifMalzeme.Text);
            komut1.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            //kategori sayısını arttırma 
            SqlCommand komut3 = new SqlCommand("update Tbl_kategori set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}