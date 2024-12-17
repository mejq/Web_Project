<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/AppPage.Master" AutoEventWireup="true" CodeBehind="App_Home.aspx.cs" Inherits="PROJECT.App_deneme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!-- Heading for Day's Journal -->
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="How Was Your Day?" CssClass="label-heading"></asp:Label>
        </div>

        <!-- Diary Textbox -->
        <div class="form-group">
            <asp:TextBox ID="txtbx_diary" runat="server" 
                BackColor="#8D6E63" BorderColor="#5A463F" BorderStyle="Solid" BorderWidth="3px"
                Font-Bold="True" Font-Italic="True" ForeColor="White" Height="216px"
                TextMode="MultiLine" Width="100%" CssClass="text-box"></asp:TextBox>
        </div>

        <!-- Save Button -->
        <div class="form-group">
            <asp:Button ID="btn_save" runat="server" 
                BackColor="#795548" BorderColor="#795548" BorderStyle="None" 
                Font-Bold="True" ForeColor="White" Text="Save Entry" Width="76px" 
                OnClick="btn_save_Click" CssClass="btn-save" />
        </div>

        <!-- File Upload -->
        <div class="form-group">
            <asp:FileUpload ID="FileUpld_diary" runat="server" AllowMultiple="True" 
                BackColor="#8D6E63" BorderColor="#5A463F" BorderStyle="Solid" BorderWidth="2px" 
                Font-Bold="True" ForeColor="White" Width="100%" CssClass="file-upload" />
        </div>

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
