<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NailSpa.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outro">
        <span>"Open your heart and be you,</span>
        <span> we'll do the rest!"</span>
    </div>  
    <div class="text">
        <p> 
        We’ll help you with everything you can imagine and fulfil your expectations with personal assistance from start to finish. 
        Within a wide range of destinations and possible venues, our team will help you choose the place that resonates most with who you are as a couple
        </p>
    </div>
       <section>
       <div class="title">
                Services
        </div>
        <div class="card-container">
             
            <div class="card">
                <div class="card-content">
                    <img src="Image/11.jpg" alt="">
                    <a href="Service.aspx" class="link">Spa Pedicure</a>
                </div>
            </div>
            <div class="card">
                <div class="card-content">
                    <img src="Image/Default/15.jpg"  alt="">
                    <a href="Service.aspx" class="link">Spa Manicure</a>
                </div>
            </div>
            <div class="swiper-slide card">
                <div class="card-content">
                    <img src="Image/Default/9.jpg"  alt="">
                    <a href="Service.aspx" class="link">Nail Exhancement</a>
                </div>
            </div>
        </div>
        
        </section>
        <section class="photo-gallery">
        <div class="title">
            Our Gallery
        </div>
         <div class="swiper mySwiper container">
        <div class="swiper-wrapper content">
            <div class="swiper-slide">
                <table class="photo-table">
                    <tr>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/1.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/2.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/3.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/4.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/5.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/6.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/7.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/8.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                        <td class="card">
                            <div class="card-content">
                                <img src="Image/Default/9.jpg" alt="">
                                <div class="overlay">
                                    <a href="Gallery.aspx" class="link">View Photo</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </section>
           
</asp:Content>
