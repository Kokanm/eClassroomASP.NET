<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Povezava.aspx.cs" 
    Inherits="WebApplication.WebForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Course: List of students</title>
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        table {
            border: 1px solid black;
        }

        thead {
            border-bottom: 2px solid #AC3A37;
            background-color: #80C885;
        }

        th {
            padding-left: 4px;
            padding-right: 4px;
            border: thin solid;
        }

        td {
            border: thin solid;
        }
    </style>
</head>
<body>
    <header>
        <ul>
            <li><a href="index.xhtml">
                <img src="Hogwartscrest.png" width="50" alt="University image" /></a></li>
            <a href="index.xhtml">
                <canvas id="text" width="200" height="50"></canvas>
            </a>
            <script>
                var canvas = document.getElementById("text");
                var context = canvas.getContext("2d");

                context.font = "bold 30px sans-serif";
                context.textAlign = "center";
                context.lineWidth = 2;
                context.strokeStyle = "black";
                context.strokeText("E-Classroom", 100, 40);
                </script>
        </ul>
    </header>

    <section class="page-content">
        <div class="laside">
            <nav>
                <h3>Navigation</h3>
                <ul>
                    <li><a href="index.xhtml">Home</a></li>
                    <li><a href="myprofile.html">My profile</a></li>
                    <li id="except">
                        <details>
                            <summary><a href="mycourses.html">My courses</a></summary>
                            <ul id="mycourses">
                                <li><a href="predmet.html">Defence Against the Dark Arts</a></li>
                                <li><a href="predmet.html">Flying</a></li>
                                <li><a href="predmet.html">Potions</a></li>
                            </ul>
                        </details>
                    </li>
                </ul>
            </nav>

            <div class="Administration">
                <h3>Administration</h3>
                <ul>
                    <li><a href="editprofile.xhtml">Edit profile</a></li>
                    <li><a href="change.xhtml">Change password</a></li>
                    <li style="border-bottom: 1px solid #BC4A47; padding-bottom: 5px;"><a href="messaging.html">Messaging</a></li>
                    <li style="padding-top: 5px;">
                        <p id="ext">Enrol me in this course</p>
                    </li>
                    <li><a href="ocene.html">Grades</a></li>
                </ul>

            </div>

            <div class="events">
                <h3>Upcoming events</h3>
                <p>No upcoming events</p>
            </div>
        </div>

        <div class="centers">
            <p id="heding" style="padding-bottom: 30px; font-size: 20px;">List of students</p>
            <form runat="server" id="form2">
                <div>

                    <h3>
                        <strong>List of students</strong>
                    </h3>
                    Izberi podružnico:&nbsp;&nbsp;
        <asp:DropDownList ID="podruznicaList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="podruznicaList_SelectedIndexChanged">
        </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="naslovTxt" runat="server" Style="font-weight: 700"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="tabelaPodatki" runat="server" AutoGenerateColumns="True" AllowSorting="True" OnSorting="GridView_Sort">
                        <EditRowStyle BackColor="#9966FF" />
                        <HeaderStyle BackColor="#FFCC00" />
                        <RowStyle BackColor="#99CCFF" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="sporociloTxt" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:ListBox ID="booksListBox" runat="server" CssClass="listBoxStyle"></asp:ListBox>
                    <br />
                    <br />
                    <asp:Button ID="buton" runat="server" OnClick="DeleteAll" Text="Delete" />
                </div>
            </form>
        </div>
    </section>
    <footer>
        <h6>&copy; 2014-2015 by Hogwarts University of Witchcraft and Wizardry.</h6>
        <address>
            Contact us at dumbledore@hog.uni-lj.si
           
        </address>
    </footer>
</body>
</html>
