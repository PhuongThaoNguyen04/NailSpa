<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="NailSpa.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="jquery.js"></script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapcontact">
    <div class="contacts-container"> 
        <div class="title">
            <h1>Have we intrigued you?</h1>
            <hr>
            <p>
                Fill out this <b>non-binding form</b>, our <b>Eve Nails and Spa</b> will reply to you <i>ASAP!</i>
            </p>
            <hr>
        </div>
        <form id="contact-form">
            <div class="field-wrapper">
                <input type="text" class="form-control contact-controls" id="Fullname" name="fullname" placeholder="Full Name" required>
                <label class="contact-label" for="Fullname"></label>
            </div>
            <div class="field-wrapper">
                <input type="number" class="form-control contact-controls" id="Number" name="phonenumber" placeholder="Phone Number" required>
                <label class="contact-label" for="Number"></label>
            </div>
            <div class="field-wrapper">
                <input type="email" class="form-control contact-controls" id="Email" name="email" placeholder="Email" required>
                <label class="contact-label" for="Email"></label>
            </div>
            <div class="field-wrapper">
                <textarea class="form-control contact-controls" placeholder="Subject" name="sub" id="Subject"></textarea>
                <label for="Subject"></label>
            </div>
            <div class="field-wrapper">
                <textarea class="form-control contact-controls" placeholder="Message" name="notes" id="Message"></textarea>
                <label for="Message"></label>
            </div>
            <div>
                <input type="submit" value="Submit">
            </div>
            <div class="submission">
                Submitted Successfully
            </div>
        </form>
    </div>
</div> 
    <div class="contact-img">
        <img src="Image/14.jpg" alt="">
    </div>
    <h1> FAQ </h1>
    <div id="wrapper" class="accordion">
        <h4 class="question">How much for some designs?</h4>
        <p class="answer">It depends on which design you want and the complexity of its, so you can contact us through Whatsapp, Instagram or Phone Number for more information please. Thanks!</p>
        <h4 class="question">How will I know what to do?</h4>
        <p class="answer">All members are offered individualised assessment bla bla bla....</p>
        <h4 class="question">Question</h4>
        <p class="answer">Answer.</p>
        <h4 class="question">What are your opening hours?</h4>
        <p class="answer">Here is our open hour Monday to Wednesday 9:30am to 7pm, Thursday &amp; Friday 10am to 7.30pm, Saturday 10am to 7pm
            and Sunday 10am to 6pm. Appointments are available on Saturdays by request only.</p>
        <h4 class="question">Question</h4>
        <p class="answer">Answer bla bla bla... </p>
    </div>    
    <script type="text/javascript">
        const fullname = document.getElementById('Fullname');
        fullname.addEventListener("input", (e)=> {e.preventDefault(); console.log(Fullname.value)});
        
        // handle submit contact form
        const contactForm = document.getElementById('contact-form');
        function handleForm(event) { 
            event.preventDefault(); 
            const submission = document.getElementsByClassName('submission')[0];
            submission.classList.add('active');
        } 
        contactForm.addEventListener('submit', handleForm);

        function toggleAlert(field){
            var element= document.getElementById(field);
            element.classList.add("active");
        }   
    </script>
             
             
</asp:Content>
