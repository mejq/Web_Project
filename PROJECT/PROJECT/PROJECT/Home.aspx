<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Main_w_Login.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PROJECT.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

                 <!-- Call to Action Section -->
  <section class="row" id="tmCallToAction">
    <div class="col-12 tm-call-to-action-col">
      <img src="img/login_wallpaper.jpg" alt="Call to Action Image" class="img-fluid tm-call-to-action-image" />
      <div class="tm-bg-white tm-call-to-action-text">
        <h2 class="tm-call-to-action-title">Login Journaling Today</h2>
        <p class="tm-call-to-action-description">
          Discover the power of reflection and storytelling. Begin your journey with MyDiary today!
        </p>
          <form id="form1">
              <asp:TextBox ID="txtbx_Username" runat="server" ForeColor="#795548" Height="34px" OnTextChanged="TextBox1_TextChanged" Width="239px"></asp:TextBox>
              <br />
              <asp:TextBox ID="txtbPassword" runat="server" ForeColor="#795548" Height="33px" OnTextChanged="TextBox1_TextChanged" TextMode="Password" Width="239px"></asp:TextBox>
              <br />
              <asp:Label ID="lb_warning" runat="server" Text="Label"></asp:Label>
              <br />
              <asp:Button ID="btn_login" runat="server" Font-Bold="True" OnClick="btn_login_Click" Text="Login" />
              <br />
            <br>
              <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="#795548" Text="İf You Don't Have an Account   "></asp:Label>

              <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#795548" OnClick="LinkButton1_Click" PostBackUrl="~/SignUp.aspx">Sign İn</asp:LinkButton>
              <br />
              <br /><br />
 
          </form>
      </div>
    </div>
  </section>

  </asp:Content>