<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page1_Movies.aspx.cs" Inherits="MoviesApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="border-color:#008080; border-style: solid; float: left; width: 50%;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="MovieCategory" HeaderText="MovieCategory" SortExpression="MovieCategory" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" DeleteCommand="DELETE FROM [tblMovie] WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieCategory] = @original_MovieCategory" InsertCommand="INSERT INTO [tblMovie] ([MovieName], [MovieCategory]) VALUES (@MovieName, @MovieCategory)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblMovie]" UpdateCommand="UPDATE [tblMovie] SET [MovieName] = @MovieName, [MovieCategory] = @MovieCategory WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieCategory] = @original_MovieCategory">
            <DeleteParameters>
                <asp:Parameter Name="original_MovieID" Type="Int32" />
                <asp:Parameter Name="original_MovieName" Type="String" />
                <asp:Parameter Name="original_MovieCategory" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="MovieCategory" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="MovieCategory" Type="String" />
                <asp:Parameter Name="original_MovieID" Type="Int32" />
                <asp:Parameter Name="original_MovieName" Type="String" />
                <asp:Parameter Name="original_MovieCategory" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" SelectCommand="SELECT * FROM [tblMovie]"></asp:SqlDataSource>
 </div>
 <div style="border-color:#800000; border-style:solid; float: left; width: 40%">
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieCategory" DataSourceID="SqlDataSource2" Height="166px" Width="332px">
         <Columns>
             <asp:BoundField DataField="MovieCategory" HeaderText="MovieCategory" ReadOnly="True" SortExpression="MovieCategory" />
             <asp:BoundField DataField="MoviePrice" HeaderText="MoviePrice" SortExpression="MoviePrice" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" SelectCommand="SELECT * FROM [tblMovieType]"></asp:SqlDataSource>
 </div>
</asp:Content>

