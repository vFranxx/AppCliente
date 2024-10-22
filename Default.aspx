<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConsumingWS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table style = "font-family:Arial,'Segoe UI'">
            <tr>
                <td>FirstValue</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID = "txtFirstValue" runat ="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>SecondValue</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID = "txtSecondValue" runat ="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Operation</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID = "txtOperation" runat ="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="3" align="right">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click"></asp:Button>
                </td>
            </tr>

            <tr>
                <td colspan="3">
                    <asp:Label ID = "lblResult" runat ="server" Text=""></asp:Label>
                </td>
            </tr>
    </div>

    </div>

</asp:Content>
