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
        <form action="#" method="get" class="tm-call-to-action-form">
             <input name="Username" type="username" class="tm-username-input" id="username" placeholder="Username" required /><br />
             <input name="Password" type="password" class="tm-password-input" id="password" placeholder="Password" required />
            <br><br />
 <button type="submit" class="btn btn-secondary">Login</button><br /><br />
 
        </form>
      </div>
    </div>
  </section>

  </asp:Content>