<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/AppPage.Master" AutoEventWireup="true" CodeBehind="App_Home.aspx.cs" Inherits="PROJECT.App_deneme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <form id="form2" runat="server">
     <!-- Heading for Day's Journal -->
     <div class="form-group">
         <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="How Was Your Day?" CssClass="label-heading"></asp:Label>
     </div>

            <asp:FileUpload ID="FileUpload2" runat="server" />
            <div><asp:TextBox ID="txtbx_title" runat="server" OnTextChanged="TextBox1_TextChanged">Title (İf you want)</asp:TextBox></div>
     <!-- Diary Textbox -->
     <div class="form-group">
         <textarea id="Textarea1" runat="server" class="form-control" rows="10" placeholder="Write your diary here..."></textarea>
&nbsp;</div>

     <!-- File Upload -->
     <div class="form-group">
         <asp:FileUpload ID="FileUpload1" runat="server" OnClientClick="showImagePreview()" CssClass="file-upload" />
     </div>

     <!-- Preview Image -->
     <div class="form-group">
         <img id="imagePreview" src="#" alt="Image Preview" style="display:none; width: 100%; max-height: 300px; margin-top: 10px;" />
     </div>

     <!-- Save Button -->
     <div class="form-group">
         <asp:Button ID="btn_Save" runat="server" OnClick="btn_save_Click" Text="Save Entry" CssClass="btn-save" />
     </div>

 
<script>
    // Görselin Base64 formatında önizlemesini göster
    function showImagePreview() {
        var fileInput = document.getElementById("<%= FileUpload1.ClientID %>");
        var preview = document.getElementById("imagePreview");

        var file = fileInput.files[0]; // İlk dosya
        var reader = new FileReader();

        reader.onloadend = function () {
            preview.src = reader.result;
            preview.style.display = "block"; // Görseli görünür yap
        }

        if (file) {
            reader.readAsDataURL(file); // Base64 olarak okuma
        } else {
            preview.src = "";
        }
    }
</script>

        <!-- Public Diary Grid -->
        <div class="form-group">
            <asp:GridView ID="GridW_publicdiary" runat="server" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
                Font-Bold="True" ForeColor="Black" Width="100%" CellPadding="2" GridLines="None" 
                CssClass="grid-view">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
    </form>
</asp:Content>


