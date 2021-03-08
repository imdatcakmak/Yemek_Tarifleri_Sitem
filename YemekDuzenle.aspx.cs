using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("Select * from Tbl_yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text = dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtTarif.Text = dr[3].ToString();
                    bgl.baglanti().Close();
                }

                if (Page.IsPostBack == false)
                {
                    //kategori Listesi
                    SqlCommand komut1 = new SqlCommand("Select * from tbl_kategori", bgl.baglanti());
                    SqlDataReader dr1 = komut1.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr1;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekresim=@p5 where yemekid=@p6 ", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
            komut2.Parameters.AddWithValue("@p6", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void BtnGununYemegiSec_Click(object sender, EventArgs e)
        {   //tüm yemekleri false yapma  
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün yemeği için id ye göre durumu true yapma.
            SqlCommand komut3 = new SqlCommand("Update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}