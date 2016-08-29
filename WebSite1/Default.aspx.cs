using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "set by server";
    }

    protected void btnGetCourse_Click(object sender, EventArgs e)
    {
        var courseTableAdapter = new StudentsDSTableAdapters.CoursesTableAdapter();
        int courseId;
        if (int.TryParse(txtCourseId.Text, out courseId))
            txtCourseName.Text = (string)courseTableAdapter.GetCourseDescription(courseId);
        else
            txtCourseName.Text = "Invalid CourseId Entered";
    }
}