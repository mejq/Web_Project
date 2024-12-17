<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Main_w_Login.Master" AutoEventWireup="true" CodeBehind="Features.aspx.cs" Inherits="PROJECT.Features" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <!-- Features Section -->
            <section class="row tm-bg-white-transparent">
                <div class="col-12 text-center">
                    <h1 class="tm-brand-name">Features</h1>
                    <p class="tm-call-to-action-description">Discover the tools and features that make MyDiary your ultimate journaling companion.</p>
                </div>
            </section>

            <section class="row" id="tmFeatures">
                <!-- Feature 1 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">User-Friendly Interface</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-user-circle"></i>
                        </div>
                        <p>Navigate effortlessly with a clean and intuitive design.</p>
                    </div>
                </div>

                <!-- Feature 2 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">Rich Text Editor</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-edit"></i>
                        </div>
                        <p>Style your entries with bold, italics, and more.</p>
                    </div>
                </div>

                <!-- Feature 3 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">Media Integration</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-images"></i>
                        </div>
                        <p>Attach photos and videos to make your memories vivid.</p>
                    </div>
                </div>

                <!-- Feature 4 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">Search and Filter</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-search"></i>
                        </div>
                        <p>Find past entries quickly with advanced search and filtering.</p>
                    </div>
                </div>

                <!-- Feature 5 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">Cloud Sync</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-cloud"></i>
                        </div>
                        <p>Access your diary from any device with seamless cloud synchronization.</p>
                    </div>
                </div>

                <!-- Feature 6 -->
                <div class="col-lg-4 col-md-6">
                    <div class="tm-feature-box">
                        <h3 class="tm-feature-name">Customization</h3>
                        <div class="tm-feature-icon-container">
                            <i class="fas fa-3x fa-palette"></i>
                        </div>
                        <p>Personalize your diary's look and feel with themes and fonts.</p>
                    </div>
                </div>
            </section>

    
</asp:Content>