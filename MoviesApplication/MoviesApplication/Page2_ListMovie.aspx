<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2_ListMovie.aspx.cs" Inherits="MoviesApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="border-color:#008080; border-style: solid; float: left; width: 50%; height: 55px;">
     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MovieName" DataValueField="MovieID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" SelectCommand="SELECT [MovieName] ,[MovieID]FROM [tblMovie] "></asp:SqlDataSource>
 </div>
 <div style="border-color:#800000; border-style:solid; float: left; width: 42%; height: 54px;">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource2">
         <Columns>
             <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
             <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
             <asp:BoundField DataField="MovieCategory" HeaderText="MovieCategory" SortExpression="MovieCategory" />
             <asp:BoundField DataField="MoviePrice" HeaderText="MoviePrice" SortExpression="MoviePrice" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" SelectCommand="SELECT tblMovie.MovieID, tblMovie.MovieName, tblMovie.MovieCategory, tblMovieType.MoviePrice FROM tblMovie INNER JOIN tblMovieType ON tblMovie.MovieCategory = tblMovieType.MovieCategory WHERE (tblMovie.MovieID = @Id)">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Id" PropertyName="SelectedValue" />
         </SelectParameters>
     </asp:SqlDataSource>
 </div>
</asp:Content>
