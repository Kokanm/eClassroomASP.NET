<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="WebApplication.editprofile" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8" />
    <title>Profile: Edit profile</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="jquery-ui-1.11.2/jquery-ui-1.11.2/jquery-ui.css" />
    <script src="jquery-1.11.1.min.js"></script>
    <script src="jquery-ui-1.11.2/jquery-ui-1.11.2/jquery-ui.js"></script>
    <script src="Detailsproverka.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker({ dateFormat: "dd/mm/yy" }, {
                changeMonth: true,
                changeYear: true
            });
        });

        $(function () {

            $('html').addClass($.fn.details.support ? 'details' : 'no-details');
            $('details').details();
        });
    </script>
</head>
<body>
    <header>
        <ul>
            <li><a href="index.aspx">
                <img src="Hogwartscrest.png" width="50" alt="University image" /></a></li>
            <a href="index.aspx">
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
            <li id="login">You are currently using guest access
            (<a href="index.aspx">log in</a>)</li>
        </ul>
    </header>


    <section>
        <div class="laside">
            <nav>
                <h3>Navigation</h3>
                <ul>
                    <li><a href="index.aspx">Home</a></li>
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
                    <li><a href="editprofile.aspx">Edit profile</a></li>
                    <li><a href="change.html">Change password</a></li>
                    <li><a href="messaging.html">Messaging</a></li>
                </ul>
            </div>

            <div class="events">
                <h3>Upcoming events</h3>
                <p>No upcoming events</p>
            </div>
        </div>

        <div class="centers">
            <div class="right">
                <form id="form3" runat="server">
                    <p>
                        <asp:Label runat="server" CssClass="label" Text="First name  ">
                            <asp:TextBox runat="server" ID="firstname" CssClass="box2" title="Enter your first name" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                ControlToValidate="firstname"
                                Display="Dynamic"
                                runat="server"
                                ErrorMessage="Please enter your first name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </asp:Label>
                    </p>
                    <p>
                        <asp:Label runat="server" CssClass="label" Text="Surname  ">
                            <asp:TextBox ID="surname" CssClass="box2" runat="server" title="Enter your surname" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                ControlToValidate="surname"
                                Display="Dynamic"
                                runat="server"
                                ErrorMessage="Please enter your surname" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </asp:Label>
                    </p>
                    <p>
                        <asp:Label Text="Telephone  " CssClass="label" runat="server">
                            <asp:TextBox TextMode="Phone" ID="telephone" CssClass="box2" runat="server" />
                        </asp:Label>
                    </p>
                    <p>
                        <asp:Label runat="server" CssClass="label" Text="Email address  ">
                            <asp:TextBox runat="server" ID="email" CssClass="box2" title="Enter your email address" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                ControlToValidate="email"
                                Display="Dynamic"
                                runat="server"
                                ErrorMessage="Please enter a valid email"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">*</asp:RegularExpressionValidator>
                        </asp:Label>
                    </p>
                    <p>
                        <asp:Label runat="server" CssClass="label" Text="City/town  ">
                            <asp:TextBox runat="server" ID="city" CssClass="box2" />
                        </asp:Label>
                    </p>
                    <p>
                        <asp:Label runat="server" CssClass="label" Text="Country  ">
                            <asp:TextBox runat="server" ID="country" class="box2" />
                        </asp:Label>
                    </p>
                    <p id="Birthday">
                        <asp:Label runat="server" CssClass="label" Text="Date of birth  ">
                            <asp:TextBox TextMode="Date" runat="server" ID="datepicker" />
                        </asp:Label>
                    </p>
                    <asp:Button runat="server" OnClick="Button_click" Text="Update profile" ID="gumb" />
                    <input type="reset" value="Cancel" id="gumb2" />
                </form>
            </div>
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