<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication.Index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>E-Classroom</title>
    <link rel="stylesheet" href="style.css" />
    <script src="jquery-1.11.1.min.js"></script>
    <script src="Detailsproverka.js"></script>
    <script>
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
            (<a href="index.aspx">log in</a>) </li>
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

        <div class="center">
            <div class="search">
                <form method="post">
                    <p>
                        <label>
                            Search courses:
                        <input type="search" autocomplete="on" id="scbox" />
                        </label>
                        <input type="submit" value="Go" id="scgumb" style="width: 35px;" />
                    </p>

                </form>
            </div>

            <div class="courses">
                <h2>Courses</h2>
                <details class="undergraduate">
                    <summary>Undergraduate Programs</summary>
                    <details>
                        <summary>1. Year</summary>
                        <ul>
                            <li><a href="predmet.html">Astronomy</a></li>
                            <li><a href="predmet.html">Charms</a></li>
                            <li><a href="predmet.html">Dark Arts</a></li>
                            <li><a href="predmet.html">Defence Against the Dark Arts</a></li>
                            <li><a href="predmet.html">Flying</a></li>
                        </ul>
                    </details>
                    <details>
                        <summary>2. Year</summary>
                        <ul>
                            <li><a href="predmet.html">Herbology</a></li>
                            <li>History of Magic</li>
                            <li>Potions</li>
                            <li>Transfiguration</li>
                            <li>Study of Ancient Runes</li>
                        </ul>
                    </details>
                    <details>
                        <summary>3. Year</summary>
                        <ul>
                            <li>Arithmancy</li>
                            <li>Muggle Studies</li>
                            <li>Care of Magical Creatures</li>
                            <li>Divination</li>
                            <li>Apparition</li>
                        </ul>
                    </details>
                </details>
                <details class="masters">
                    <summary>Masters Programs</summary>
                    <details>
                        <summary>Common</summary>
                        <ul>
                            <li>Alchemy</li>
                            <li>Ancient Studies</li>
                            <li>Art</li>
                            <li>Earth Magic</li>
                        </ul>
                    </details>
                    <details>
                        <summary>Elective</summary>
                        <ul>
                            <li>Muggle Art</li>
                            <li>Music</li>
                            <li>Muggle Music</li>
                            <li>Ghoul Studies</li>
                        </ul>
                    </details>
                </details>
                <details class="doctoral">
                    <summary>Doctoral Programs</summary>
                    <details>
                        <summary>General</summary>
                        <ul>
                            <li>Magical Theory</li>
                            <li>Xylomancy</li>
                            <li>Frog Choir</li>
                            <li>Hogwarts orchestra</li>
                        </ul>
                    </details>
                    <details>
                        <summary>In-Depth</summary>
                        <ul>
                            <li>Potions 2</li>
                            <li>Defence Against the Dark Arts 2</li>
                            <li>Herbology 2</li>
                            <li>Charms 2</li>
                        </ul>
                    </details>
                </details>
                <details class="other">
                    <summary>Other</summary>
                    <ul>
                        <li>Quidditch</li>
                        <li>Triwizard tournament</li>
                        <li>Hiking the Black Forest</li>
                    </ul>
                </details>
            </div>
        </div>

        <div class="raside">
            <div class="login">
                <h3>Login</h3>
                <form id="form4" runat="server">
                    <p id="username">
                        <asp:Label runat="server" Text="Username:">
                            <br />
                            <asp:TextBox runat="server" TextMode="Email" CssClass="box" ID="user" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                ControlToValidate="user"
                                Display="Dynamic"
                                runat="server"
                                ErrorMessage="Please enter your email" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </asp:Label>
                    </p>
                    <p id="password">
                        <asp:Label runat="server" Text="Password:">
                            <br />
                            <asp:TextBox runat="server" TextMode="Password" CssClass="box" ID="pasvd" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                ControlToValidate="pasvd"
                                Display="Dynamic"
                                runat="server"
                                ErrorMessage="Please enter the password" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </asp:Label>
                    </p>

                    <label>
                        <input type="checkbox" id="chkbox">
                        Remember username</label>
                    <asp:Button runat="server" OnClick="Button_click" Text="Log in" ID="gumb" />
                </form>

                <p id="create"><a href="create.aspx">Create new account</a></p>
                <p id="forgot"><a href="change.html">Forgot password?</a></p>

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