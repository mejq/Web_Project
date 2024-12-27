<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/AppPage.Master" AutoEventWireup="true" CodeBehind="App_Home.aspx.cs" Inherits="PROJECT.App_deneme1" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <form id="form2" >
            <br />
            <br /> 
            <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
            <div class="tm-bg-white-transparent" >
            <div>
                <asp:TextBox ID="txtbx_title" runat="server" OnTextChanged="TextBox1_TextChanged">Title (İf you want)</asp:TextBox>
            </div>
  
  

  
    <div id="textBox" class="text-box tm-bg-white-transparent" contenteditable="true">
        Görsel eklemek için yukarıdan dosya seçin...
    </div>
    <br />
    <div class="form-group">

    <ul style="display: flex; list-style: none; padding: 0;">
        <li style="margin-right: 10px;">
            <asp:Button ID="btn_Save" runat="server" OnClick="btn_save_Click" Text="Save Entry" CssClass="btn-save" />
        </li>
        <br />
        <li>
            <input type="file" id="fileInput" class="textBoximg" accept="image/*" onchange="handleFileSelect()" />
        </li>

    </ul>
                </div>
                </div>
                <br />
        



    <script >
        const fileInput = document.getElementById('fileInput');
        const textBox = document.getElementById('textBox');
        const saveButton = document.getElementById('<%= btn_Save.ClientID %>');
       


        fileInput.addEventListener('change', function () {
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    const base64Image = e.target.result;

                    // Görseli textBox içine ekle
                    const imgElement = document.createElement('img');
                    imgElement.src = base64Image;
                    imgElement.style.maxWidth = '100%'; // Görsel genişliğini sınırla
                    imgElement.style.height = 'auto';
                    textBox.appendChild(imgElement);
                };
                reader.readAsDataURL(file); // Görseli Base64'e çevir
            }
        });
        saveButton.addEventListener('click', function () {
            const hiddenField1 = document.getElementById('<%= HiddenField1.ClientID %>');
           if (textBox.innerHTML.trim() !== "") {
               hiddenField1.value = textBox.innerHTML;
               console.log("HiddenField1 Value: ", hiddenField1.value); // Konsola yazdır
           } else {
               alert('Lütfen metin alanına bir içerik ekleyin.');
           }
       });

    </script>
               

          <div></div>
            <div></div>
    
            <br />
            <br />

        <!-- Public Diary Grid -->
        <div class="form-group_showdiary">
           
            <ul>
                <li >
                    <asp:Calendar ID="Calendar_diary" runat="server" BackColor="White" BorderColor="#999999" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663300" Height="192px" NextPrevFormat="ShortMonth" SelectionMode="DayWeekMonth" ValidateRequestMode="Enabled" Width="464px" Caption="Select The Date You Want To View" OnSelectionChanged="Calendar_diary_SelectionChanged" EnableTheming="True" Font-Bold="True">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                     <OtherMonthDayStyle ForeColor="#808080" />
                     <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                     <SelectorStyle BackColor="Silver" />
                     <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                     <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <WeekendDayStyle BackColor="#FFFFCC" />
                     </asp:Calendar>

                </li>
                <li>

                     <asp:Button ID="btn_show" runat="server" OnClick="btn_show_Click" Text="View" BackColor="#795548" Font-Bold="True" ForeColor="White" />


                </li>

                <li class="tm-bg-white-transparent">
                    <asp:Literal ID="literal_diary" runat="server"></asp:Literal>

                </li>

            </ul>
           
           
           
        </div>
    </form>
</asp:Content>


