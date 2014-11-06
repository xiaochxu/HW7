Partial Class admin_AdminDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedname As String = e.Values("name").ToString()
        lbl_deletedname.text = deletedname & " has been deletd from the databse "
        Response.AddHeader("REFRESH", "3;URL=./adminAll.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REPRESH", "3;URL=./AdminAll.aspx")
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub
End Class