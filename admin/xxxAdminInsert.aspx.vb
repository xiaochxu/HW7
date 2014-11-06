Partial Class admin_AdminInsert
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./adminall.aspx")
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.focus()
    End Sub
End Class
