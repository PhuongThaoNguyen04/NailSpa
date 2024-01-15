using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NailSpa
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadServices();
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            DateTime Date = Calendar1.SelectedDate;
            string service = DropDownList1.SelectedValue;
            int quantity = Convert.ToInt32(txtQuantity.Text);

            decimal totalPrice = CalculateTotalPrice(service, quantity);
            lblDisplay.Text = $"Total Price: ${totalPrice.ToString("0.00")}";

            SaveAppointmentToDatabase(name, email, phone, Date, service, quantity, totalPrice);

            Response.Redirect("Default.aspx");
        }

        private void LoadServices()
        {
            DropDownList1.Items.Add(new ListItem("Mini Manicure with Shellac", "25"));
            DropDownList1.Items.Add(new ListItem("Spa Manicure with Sellac", "30"));
            DropDownList1.Items.Add(new ListItem("Mini manicure with Polish", "15"));
            DropDownList1.Items.Add(new ListItem("Spa Manicure with Polish", "20"));
            DropDownList1.Items.Add(new ListItem("File and Paint", "12"));
            DropDownList1.Items.Add(new ListItem("Spa Pedicure with Shellac", "45"));
            DropDownList1.Items.Add(new ListItem("Spa Pedicure with Polish", "35"));
            DropDownList1.Items.Add(new ListItem("Mini Pedicure with Shellac", "30"));
            DropDownList1.Items.Add(new ListItem("Mini Pedicure with Polish", "25"));
            DropDownList1.Items.Add(new ListItem("Nail Exhancement with Shellac", "45"));
            DropDownList1.Items.Add(new ListItem("BIAB with Shellac", "35"));
            DropDownList1.Items.Add(new ListItem("Nail Art", "5"));
             
        }

        private void SaveAppointmentToDatabase(string name, string email, string phone, DateTime Date, string service, int quantity, decimal totalPrice)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["AppointmentDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Appointment (Name, Email, PhoneNumber, AppointmentDate, Services, Quantity, TotalPrice) " +
                               "VALUES (@Name, @Email, @PhoneNumber, @AppointmentDate, @Services, @Quantity, @TotalPrice)";

                SqlCommand command = new SqlCommand(query, connection);

                // Add parameters
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@PhoneNumber", phone);
                command.Parameters.AddWithValue("@AppointmentDate", Date);
                command.Parameters.AddWithValue("@Services", service);
                command.Parameters.AddWithValue("@Quantity", quantity);
                command.Parameters.AddWithValue("@TotalPrice", totalPrice);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        protected void btnCal_Click(object sender, EventArgs e)
        {
            string selectedService = DropDownList1.SelectedValue;
            int quantity = Convert.ToInt32(txtQuantity.Text);
            decimal totalPrice = CalculateTotalPrice(selectedService, quantity);
            lblDisplay.Text = $"Total Price: €{totalPrice.ToString("0.00")}";
        }
        private decimal CalculateTotalPrice(string selectedService, int quantity)
        {
            decimal servicePrice = Convert.ToDecimal(selectedService);
            return servicePrice * quantity;
        }
    }
}