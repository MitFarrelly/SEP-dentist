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
    public partial class ViewBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
                List<Booking> lstCurrentBooking = new List<Booking>();
                foreach (Booking objBooking in new ControllerClass.BookingController().ShowCurrentBookings(int.Parse(Session["CustomerID"].ToString())))
                {
                    if (objBooking.Status.ToLower() == "new")
                    {
                        lstCurrentBooking.Add(objBooking);
                    }

                }
                this.rptCurrentBookings.DataSource = lstCurrentBooking;
                rptCurrentBookings.DataBind();


                List<Booking> lstOldBooking = new List<Booking>();
                foreach (Booking objBooking in new ControllerClass.BookingController().ShowCurrentBookings(int.Parse(Session["CustomerID"].ToString())))
                {
                    if (objBooking.Status.ToLower() == "completed")
                    {
                        lstOldBooking.Add(objBooking);
                    }

                }
                this.rptPastBookings.DataSource = lstOldBooking;
                rptPastBookings.DataBind();
            }
            
        
        }

        protected void rptCurrentBookings_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
                string StrWorkType = "";
                foreach (BusinessLayer.WorkType objWorkType in ((Booking)e.Item.DataItem).ObjWorkTypes) {
                    StrWorkType = StrWorkType + objWorkType.Description + ", ";
                }
                StrWorkType = StrWorkType.TrimEnd(',');
                ((Literal)e.Item.FindControl("ltrlWorkType")).Text = StrWorkType;
            }

        }

        protected void rptPastBookings_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string StrWorkType = "";
                foreach (BusinessLayer.WorkType objWorkType in ((Booking)e.Item.DataItem).ObjWorkTypes)
                {
                    StrWorkType = StrWorkType + objWorkType.Description + ", ";
                }
                StrWorkType = StrWorkType.TrimEnd(',');
                ((Literal)e.Item.FindControl("ltrlWorkType")).Text = StrWorkType;
            }
        }

        protected void btnRemoveBooking_Click(object sender, EventArgs e)
        {
            new BookingController().CancelBooking(int.Parse(hdnBookingNo.Value));
            Response.Redirect("ViewBookings.aspx");
        }

      
    }
}