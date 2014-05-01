using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using ControllerClass;

namespace KangrooUniversity
{
    public partial class NewBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
                List<WorkType> lstWorkTypeBooking = new List<WorkType>();
                lstWorkTypeBooking = new ControllerClass.BookingController().GetAllWorkTypes();

                ddlServiceType1.DataTextField = "Description";
                ddlServiceType1.DataValueField = "WorkTypeID";
                ddlServiceType1.DataSource = lstWorkTypeBooking;
                ddlServiceType1.DataBind();

                ddlServiceType2.DataTextField = "Description";
                ddlServiceType2.DataValueField = "WorkTypeID";
                ddlServiceType2.DataSource = lstWorkTypeBooking;
                ddlServiceType2.DataBind();

                ddlServiceType3.DataTextField = "Description";
                ddlServiceType3.DataValueField = "WorkTypeID";
                ddlServiceType3.DataSource = lstWorkTypeBooking;
                ddlServiceType3.DataBind();
                
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            List<WorkType> objWorkTypes = new List<WorkType>();
            if (ddlServiceType1.SelectedValue != "0") 
            { 
                WorkType objWorkType1 = new WorkType();
                objWorkType1.WorkTypeID=int.Parse(ddlServiceType1.SelectedValue);
                objWorkTypes.Add(objWorkType1);
            }
            if (ddlServiceType2.SelectedValue != "0")
            {
                WorkType objWorkType2 = new WorkType();
                objWorkType2.WorkTypeID = int.Parse(ddlServiceType2.SelectedValue);
                objWorkTypes.Add(objWorkType2);
            }
            if (ddlServiceType3.SelectedValue != "0")
            {
                WorkType objWorkType3 = new WorkType();
                objWorkType3.WorkTypeID = int.Parse(ddlServiceType3.SelectedValue);
                objWorkTypes.Add(objWorkType3);
            }


            Booking objBooking = new BookingController().RequestBooking(int.Parse(Session["CustomerID"].ToString()), txtRegNo.Text, objWorkTypes, DateTime.Parse(txtBookingDate.Text + " " + ddlBookingTime.SelectedItem.Text), txtDesc.Text);
            ControllerClass.BookingController.ObjCurrentBooking = objBooking;
            new BookingController().ConfirmBooking();
            Response.Redirect("ViewBookings.aspx");
        }
    }
}