<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/AppPage.Master" AutoEventWireup="true" CodeBehind="App_Map.aspx.cs" Inherits="PROJECT.App_Map" %>

    

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <!-- Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <!-- Leaflet JS -->
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

    <!-- Harita Alanı -->
    <div id="map"  style="height: 600px; margin: 20px ;"></div>

    <!-- Leaflet Harita Scripti -->
    <script>
        // Haritayı başlat
        var map = L.map('map').setView([0, 0], 2);

        // OpenStreetMap katmanı ekle
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
        }).addTo(map);

        // Marker JavaScript kodları
        <%= MarkersJavaScript %>
    </script>
</asp:Content>

