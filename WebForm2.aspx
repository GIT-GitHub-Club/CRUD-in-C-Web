<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication7.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Grid-View-Table-Format</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            max-width: 100%;
            border-collapse: collapse;
            margin-bottom: 0px;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        
        <div class="col-md-8 col-md-offset-2">
        <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
            <Columns>
                   
                <asp:TemplateField HeaderText="EmployeeID" SortExpression="EmployeeID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                       <%-- <asp:LinkButton ID="lbInsert" OnClick="lblinsert_Click" runat="server">Insert</asp:LinkButton>--%>
                          <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" OnClick="lblinsert_Click" Text="Insert" CommandName="Edit" ControlStyle-CssClass="btn btn-primary" />  
                    </ItemTemplate> 
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeFirstName" SortExpression="EmployeeFirstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EmployeeFirstName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmployeeFirstName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeLastName" SortExpression="EmployeeLastName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EmployeeLastName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("EmployeeLastName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeDeprtment" SortExpression="EmployeeDeprtment">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EmployeeDeprtment") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("EmployeeDeprtment") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Department" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeSalary" SortExpression="EmployeeSalary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EmployeeSalary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("EmployeeSalary") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Salary" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeMoNo" SortExpression="EmployeeMoNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EmployeeMoNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("EmployeeMoNo") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="MoNo" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                    ControlStyle-CssClass="btn btn-danger" HeaderText="Remove-Record"> 
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                </asp:CommandField>
                 <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit"  runat="server" Text="Edit" CommandName="Edit" ControlStyle-CssClass="btn btn-primary" />  
                        <input id='testName' type='checkbox' Default=1 value='Yes' name='testName'>
   
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" ControlStyle-CssClass="btn btn-primary"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>
                <%--<asp:CommandField ButtonType="Button" ShowEditButton="True" 
                    ControlStyle-CssClass="btn btn-primary" HeaderText="Edit-Record"/>--%>

            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" /> 
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" DeleteCommand="DELETE FROM [EmployeeInfo] WHERE [EmployeeID] = @original_EmployeeID AND [EmployeeFirstName] = @original_EmployeeFirstName AND [EmployeeLastName] = @original_EmployeeLastName AND (([EmployeeDeprtment] = @original_EmployeeDeprtment) OR ([EmployeeDeprtment] IS NULL AND @original_EmployeeDeprtment IS NULL)) AND [EmployeeSalary] = @original_EmployeeSalary AND (([EmployeeMoNo] = @original_EmployeeMoNo) OR ([EmployeeMoNo] IS NULL AND @original_EmployeeMoNo IS NULL))" InsertCommand="INSERT INTO [EmployeeInfo] ([EmployeeID], [EmployeeFirstName], [EmployeeLastName], [EmployeeDeprtment], [EmployeeSalary], [EmployeeMoNo]) VALUES (@EmployeeID, @EmployeeFirstName, @EmployeeLastName, @EmployeeDeprtment, @EmployeeSalary, @EmployeeMoNo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmployeeID], [EmployeeFirstName], [EmployeeLastName], [EmployeeDeprtment], [EmployeeSalary], [EmployeeMoNo] FROM [EmployeeInfo]" UpdateCommand="UPDATE [EmployeeInfo] SET [EmployeeFirstName] = @EmployeeFirstName, [EmployeeLastName] = @EmployeeLastName, [EmployeeDeprtment] = @EmployeeDeprtment, [EmployeeSalary] = @EmployeeSalary, [EmployeeMoNo] = @EmployeeMoNo WHERE [EmployeeID] = @original_EmployeeID AND [EmployeeFirstName] = @original_EmployeeFirstName AND [EmployeeLastName] = @original_EmployeeLastName AND (([EmployeeDeprtment] = @original_EmployeeDeprtment) OR ([EmployeeDeprtment] IS NULL AND @original_EmployeeDeprtment IS NULL)) AND [EmployeeSalary] = @original_EmployeeSalary AND (([EmployeeMoNo] = @original_EmployeeMoNo) OR ([EmployeeMoNo] IS NULL AND @original_EmployeeMoNo IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_EmployeeFirstName" Type="String" />
                <asp:Parameter Name="original_EmployeeLastName" Type="String" />
                <asp:Parameter Name="original_EmployeeDeprtment" Type="String" />
                <asp:Parameter Name="original_EmployeeSalary" Type="Decimal" />
                <asp:Parameter Name="original_EmployeeMoNo" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="EmployeeFirstName" Type="String" />
                <asp:Parameter Name="EmployeeLastName" Type="String" />
                <asp:Parameter Name="EmployeeDeprtment" Type="String" />
                <asp:Parameter Name="EmployeeSalary" Type="Decimal" />
                <asp:Parameter Name="EmployeeMoNo" Type="Int64" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmployeeFirstName" Type="String" />
                <asp:Parameter Name="EmployeeLastName" Type="String" />
                <asp:Parameter Name="EmployeeDeprtment" Type="String" />
                <asp:Parameter Name="EmployeeSalary" Type="Decimal" />
                <asp:Parameter Name="EmployeeMoNo" Type="Int64" />
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_EmployeeFirstName" Type="String" />
                <asp:Parameter Name="original_EmployeeLastName" Type="String" />
                <asp:Parameter Name="original_EmployeeDeprtment" Type="String" />
                <asp:Parameter Name="original_EmployeeSalary" Type="Decimal" />
                <asp:Parameter Name="original_EmployeeMoNo" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
