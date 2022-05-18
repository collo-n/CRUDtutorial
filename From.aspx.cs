using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDtutorial
{
    public partial class From : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSubmit.Visible = false;
        }

        ProgrammingClassDataContext db = new ProgrammingClassDataContext();
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int prodid = int.Parse(txtID.Text);
            string itemname = txtName.Text, design = txtDesign.Text, color = DDLColor.SelectedValue;
            DateTime expirydate = DateTime.Parse(txtDate.Text);

            var st = new ProductInfo_Table
            {
                ProductID = prodid,
                ItemName = itemname,
                Design = design,
                Color = color,
                InsertDate = DateTime.Now,
                ExpiryDate = expirydate,
            };

            db.ProductInfo_Tables.InsertOnSubmit(st);
            db.SubmitChanges();
            lblSubmit.Visible = true;
            lblSubmit.Text="Successfully inserted";
            loadData();
        }
        void loadData()
        {
            var st = from s in db.ProductInfo_Tables select s;
            GridView1.DataSource = st; 
        }

        private void GridView1_Load(object sender, EventArgs e)
        {
            loadData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string itemname = txtName.Text, design = txtDesign.Text, color = DDLColor.SelectedValue;
            DateTime expirydate = DateTime.Parse(txtDate.Text);
            var st = (from s in db.ProductInfo_Tables where s.ProductID == int.Parse(txtID.Text) select s).First();
            st.ItemName = itemname;
            st.Design = design;
            st.Color = color;
            st.UpdateDate = DateTime.Now;
            st.ExpiryDate = expirydate;
            db.SubmitChanges();
            Console.WriteLine("Successfully Updated");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var st = from s in db.ProductInfo_Tables where s.ProductID == int.Parse(txtID.Text) select s;
            GridView1.DataSource = st;
            GridView1.DataSourceID = String.Empty;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var st = (from s in db.ProductInfo_Tables where s.ProductID == int.Parse(txtID.Text) select s).FirstOrDefault();
            db.ProductInfo_Tables.DeleteOnSubmit(st);
            db.SubmitChanges();
            Console.WriteLine("Successfully deleted");
        }
    }
}