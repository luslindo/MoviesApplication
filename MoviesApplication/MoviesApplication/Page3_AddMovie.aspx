<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3_Movies.aspx.cs" Inherits="MoviesApplication._Default" %>

<script runat="server">

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="border-color:#008080; border-style: solid; float: left; width: 50%;">
     Enter Movie Name<asp:TextBox ID="TextBox1" runat="server" Width="196px" Height="20px"></asp:TextBox>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <br />
     <asp:Button ID="Button1" runat="server" Text="Insert Movie" Height="30px" Width="121px" OnClick="Button1_Click1" />
 </div>
 <div style="border-color:#800000; border-style:solid; float: left; width: 40%">
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="MovieCategory" DataValueField="MovieCategory">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" SelectCommand="SELECT [MovieCategory], [MoviePrice] FROM [tblMovieType]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ist3dkConnectionString %>" DeleteCommand="DELETE FROM [tblMovie] WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieCategory] = @original_MovieCategory" InsertCommand="INSERT INTO [tblMovie] ([MovieName], [MovieCategory]) VALUES (@MovieName, @MovieCategory)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblMovie]" UpdateCommand="UPDATE [tblMovie] SET [MovieName] = @MovieName, [MovieCategory] = @MovieCategory WHERE [MovieID] = @original_MovieID AND [MovieName] = @original_MovieName AND [MovieCategory] = @original_MovieCategory">
         <DeleteParameters>
             <asp:Parameter Name="original_MovieID" Type="Int32" />
             <asp:Parameter Name="original_MovieName" Type="String" />
             <asp:Parameter Name="original_MovieCategory" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:ControlParameter ControlID="TextBox1" Name="MovieName" PropertyName="Text" Type="String" />
             <asp:ControlParameter ControlID="DropDownList1" Name="MovieCategory" PropertyName="SelectedValue" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="MovieName" Type="String" />
             <asp:Parameter Name="MovieCategory" Type="String" />
             <asp:Parameter Name="original_MovieID" Type="Int32" />
             <asp:Parameter Name="original_MovieName" Type="String" />
             <asp:Parameter Name="original_MovieCategory" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
 </div>

</asp:Content>
