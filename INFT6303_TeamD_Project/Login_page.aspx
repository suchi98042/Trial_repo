<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="INFT6303_TeamD_Project.Login_page" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="234px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email ID</td>
                <td class="auto-style3">
                    <asp:TextBox ID="email_textbox" runat="server" Width="223px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="email_Validator" runat="server" ControlToValidate="email_textbox" ErrorMessage="Email cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="validemail_Validator" runat="server" ControlToValidate="email_textbox" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="password_textbox" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="password_Validator" runat="server" ControlToValidate="password_textbox" ErrorMessage="Password cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Login_ID" runat="server" Text="Login" OnClick="Login_ID_Click" />
                    <input id="Reset1" type="reset" value="Reset" /></td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" href="Registration.aspx">Registration</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
 </asp:Content>   
