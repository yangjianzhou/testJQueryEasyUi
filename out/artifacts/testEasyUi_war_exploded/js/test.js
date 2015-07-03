$(document).ready(function(){
    $("#dataGridTable").datagrid({
        method : "post",
        url: "userProcessServlet",
        pagination: true,
        singleSelect : true,
        onLoadSuccess: function (data) {

        },
        onLoadError :function(){
            window.alert(1234);
        }
    });
});
