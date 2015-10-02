using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


/// <summary>
/// Summary description for Index
/// </summary>
namespace WebApplication
{
    public partial class Index : System.Web.UI.Page
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
                string SQLcommand = "SELECT 1 FROM User WHERE email=?em AND password=?pw LIMIT 1;";
                MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                bazaUkaz.Parameters.Add(new MySqlParameter("?em", user.Text));
                bazaUkaz.Parameters.Add(new MySqlParameter("?pw", pasvd.Text));
                if (bazaUkaz.ExecuteNonQuery() > 0)
                {
                    Session.Add("email", user.Text);
                }
                else
                {
                    Console.WriteLine("GOODBYE");
                } 
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