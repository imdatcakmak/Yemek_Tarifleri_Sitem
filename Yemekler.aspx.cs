using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];



                //kategori Listesi
                SqlCommand komut1 = new SqlCommand("Select * from tbl_kategori", bgl.baglanti());
                SqlDataReader dr1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1",id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


            //Yemek listesi 
            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


            //kategori sayısını arttırma 
            SqlCommand komut3 = new SqlCommand("update Tbl_kategori set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}