using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm : System.Web.UI.Page
    {

        const string bazaConnString = "server=mysql.lrk.si;User Id=km8390;password=km8390;Persist Security Info=True;database=km8390_b3";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();
                    string SQLcommand = "SELECT idUser, username FROM User;";
                    MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                    MySqlDataReader reader = bazaUkaz.ExecuteReader();
                    podruznicaList.DataSource = reader;
                    podruznicaList.DataValueField = "idUser";
                    podruznicaList.DataTextField = "username";
                    podruznicaList.DataBind();

                    if (Session.Count != 0)
                    {
                        // display Session's name-value pairs
                        foreach (string keyName in Session.Keys)
                            booksListBox.Items.Add(keyName +
                               " How to Program. ISBN#: " + Session[keyName]);
                    } 
                    

                }
                catch (Exception)
                {
                    sporociloTxt.Text = "Prišlo je do napake pri branju baze.";
                }
                finally
                {
                    bazaPovezava.Close();
                }
            }


            else
            {
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();
                    string SQLcommand = "SELECT * from User";
                    MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                    MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                    DataTable dataTable = new DataTable();
                    adp.Fill(dataTable);
                    tabelaPodatki.DataSource = dataTable;
                    tabelaPodatki.DataBind();
                }
                catch (Exception)
                {
                    sporociloTxt.Text = "Prišlo je do napake pri branju baze.";
                }
                finally
                {
                    bazaPovezava.Close();
                }

            }

        }

        protected void podruznicaList_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView_Sort(object sender, GridViewSortEventArgs e)
        {
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
            switch (e.SortExpression)
            {
                case "idUser":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY idUser ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "username":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY username ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "firstname":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY firstname ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "lastname":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY lastname ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "email":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY email ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "city":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY city ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
                case "country":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        bazaPovezava.Open();
                        string SQLcommand = "SELECT * from User ORDER BY country ASC";
                        MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                        MySqlDataAdapter adp = new MySqlDataAdapter(bazaUkaz);
                        DataTable dataTable = new DataTable();
                        adp.Fill(dataTable);
                        tabelaPodatki.DataSource = dataTable;
                        tabelaPodatki.DataBind();
                    }
                    break;
            }
        }

        protected void DeleteAll(object sender, EventArgs e)
        {
            MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
            try
            {
                bazaPovezava.Open();
                string SQLcommand = "DELETE FROM User";
                MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
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