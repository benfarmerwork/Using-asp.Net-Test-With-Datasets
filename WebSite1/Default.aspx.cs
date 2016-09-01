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

    protected void btnOpenQuery_Click(object sender, EventArgs e)
    {
        var studentsTableAdapter = new StudentsDSTableAdapters.StudentsTableAdapter();

        var studentDataTable = studentsTableAdapter.GetDataByStudentSecondName(txtSurname.Text);
        
        DataGrid1.DataSourceID = null;
        DataGrid1.DataSource = studentDataTable;
        DataGrid1.DataBind();
    }

    protected void SearchAge_Click(object sender, EventArgs e)
    {
        // An Adapter is the section that sits between the databse and the c# code
        var studentsTableAdapter = new StudentsDSTableAdapters.StudentsTableAdapter();
        var studentDataTable = studentsTableAdapter.GetDataByAge(int.Parse(txtSearchAge.Text));
        DataGrid1.DataSourceID = null;
        DataGrid1.DataSource = studentDataTable;
        DataGrid1.DataBind();
    }
}