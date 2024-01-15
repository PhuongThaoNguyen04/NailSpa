<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="NailSpa.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Booking Appointment</title> <!--for seo -->
    <style type="text/css">
       .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 19px;
            width: 197px;
        }
        .auto-style3 {
            width: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Book Appointment</h2>
        <table >
        <tr>
            <td class="auto-style2">Full name</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtName" runat="server" Width="351px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="352px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style3">Phone Number</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" Height="19px" Width="348px"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
            <td class="auto-style3">Appointment Date</td>
             <td>
                 <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
             </td>
        </tr>
         <tr>
            <td class="auto-style3">Services</td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
             </td>
        </tr>
            <tr>
            <td class="auto-style3">Quantity</td>
             <td>
                <asp:TextBox ID="txtQuantity" runat="server" Width="356px"></asp:TextBox>
             </td>
        </tr>
             <tr>
            <td class="auto-style3">Total Price</td>
             <td>
                 <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
             </td>
        </tr>
        
            <tr>
                <td>
                    <br />
                    <asp:Button ID="btnBook" runat="server" Text="Book Appointment" OnClick="btnBook_Click" />
                    <asp:Button ID="btnCal" runat="server" Text="Calculate" OnClick="btnCal_Click" />
                </td>
            </tr>
        
        </table>
</asp:Content>
