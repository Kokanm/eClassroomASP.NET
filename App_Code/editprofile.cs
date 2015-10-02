using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for editprofile
/// </summary>
namespace WebApplication
{
    public partial class editprofile : System.Web.UI.Page
    {
        const string bazaConnString = "server=mysql.lrk.si;User Id=km8390;password=km8390;Persist Security Info=True;database=km8390_b3";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_click(object sender, EventArgs e)
        {
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
            try
            {
                bazaPovezava.Open();
                string SQLcommand = "UPDATE User SET telephone=@tl, email=@em, city=@ci, country=@co, birthday=@dt WHERE firstname=@fn AND lastname=@ln;";
                MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                bazaUkaz.Parameters.Add(new MySqlParameter("@fn", firstname.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@ln", surname.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@tl", telephone.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@em", email.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@ci", city.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@co", country.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("@dt", datepicker.Text));                

                bazaUkaz.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                bazaPovezava.Close();
            }
        }
    }
}