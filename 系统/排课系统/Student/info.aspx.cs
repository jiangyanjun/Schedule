﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace 排课系统.Student
{
    public partial class info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["student"] == null)
                {
                    WebMessageBox.Show("请登录","../Default.aspx");
                }
               Label1.Text = string.Format("{0} 同学 欢迎您,", Session["student"].ToString());
                string sql = "select * from t_student where studentId='" + Session["student"].ToString()+"'";
                DataTable dt=Operation.getDatatable(sql);
                if(dt.Rows.Count>0)
                {
                    Label2.Text = dt.Rows[0]["studentId"].ToString();
                    Label3.Text = dt.Rows[0]["name"].ToString();
                    Label4.Text = dt.Rows[0]["grade"].ToString();
                    Label5.Text = dt.Rows[0]["major"].ToString();
                   
                }
                
            }
        }

    }
}