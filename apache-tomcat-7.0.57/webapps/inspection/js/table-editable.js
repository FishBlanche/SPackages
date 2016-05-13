
var TableEditable = function () {
	var adds=0;
    return {
    	
        //main function to initiate the module
        init: function () {
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }
                //oTable.fnDraw();
            }

            function editRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                jqTds[0].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<input type="text" class="m-wrap small" value="' + aData[1] + '">';
                jqTds[2].innerHTML = '<a  style="text-decoration:none" class="accredit" href="javascript:;"><i class="icon-user icon-large" title="授权"></i></a>';
                jqTds[3].innerHTML = '<a  style="text-decoration:none" class="edit" href=""><i class="icon-save icon-large"  title="保存"></i></a>';
                jqTds[4].innerHTML = '<a  style="text-decoration:none" class="cancel" href=""><i class="icon-ban-circle icon-large"  title="取消"></i></a>';
            }

            function saveRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                if(jqInputs.length==3){
                	oTable.fnUpdate(jqInputs[1].value, nRow, 0, false);
                	oTable.fnUpdate(jqInputs[2].value, nRow, 1, false);
                	oTable.fnUpdate('<a  style="text-decoration:none" class="accredit" href="javascript:;"><i class="icon-user icon-large" title="授权"></i></a>', nRow, 2, false);
                	oTable.fnUpdate('<a  style="text-decoration:none" class="edit" href=""><i class="icon-edit icon-large" title="编辑"></i></a>', nRow, 3, false);
                	oTable.fnUpdate('<a  style="text-decoration:none" class="delete" href=""><i class="icon-remove-sign icon-large"  title="删除"></i></a>', nRow, 4, false);
                	//oTable.fnDraw();
                }
                else{
                    oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                    oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                    oTable.fnUpdate('<a  style="text-decoration:none" class="accredit" href="javascript:;"><i class="icon-user icon-large" title="授权"></i></a>', nRow, 2, false);
                    oTable.fnUpdate('<a  style="text-decoration:none" class="edit" href=""><i class="icon-edit icon-large" title="编辑"></i></a>', nRow, 3, false);
                    oTable.fnUpdate('<a  style="text-decoration:none" class="delete" href=""><i class="icon-remove-sign icon-large"  title="删除"></i></a>', nRow, 4, false);
                    //oTable.fnDraw();
                }
            }


            function cancelEditRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                oTable.fnUpdate('<a  style="text-decoration:none" class="accredit" href="javascript:;"><i class="icon-user icon-large" title="授权"></i></a>', nRow, 2, false);
                oTable.fnUpdate('<a  style="text-decoration:none" class="edit" href=""><i class="icon-edit icon-large" title="编辑"></i></a>', nRow, 3, false);
                //oTable.fnDraw();
            }

            var oTable = $('#sample_editable_1').dataTable({
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "所有"] // change per page values here
                ],
                // set the initial value
                "iDisplayLength": 5,
                "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "每页 _MENU_ 条信息",
                    "oPaginate": {
                        "sPrevious": "上一页",
                        "sNext": "下一页"
                    }
                },
                "aoColumnDefs": [{
                        'bSortable': false,
                        'aTargets': [0]
                    }
                ]
            });

            jQuery('#sample_editable_1_wrapper .dataTables_filter input').addClass("m-wrap medium"); // modify table search input
            jQuery('#sample_editable_1_wrapper .dataTables_length select').addClass("m-wrap small"); // modify table per page dropdown
            jQuery('#sample_editable_1_wrapper .dataTables_length select').select2({
                showSearchInput : false //hide search box with special css class
            }); // initialzie select2 dropdown

            var nEditing = null;

            $('#sample_editable_1_new').click(function (e) {
            	adds++;
            	if(adds>1){
//            		console.log("restoreRow");
            	}else{
//            		console.log("restoreRow");
                e.preventDefault();
                var aiNew = oTable.fnAddData(['','','<a  style="text-decoration:none" class="accredit" href="javascript:;"><i class="icon-user icon-large" title="授权"></i></a>',
                        '<a  style="text-decoration:none" class="edit" href=""><i class="icon-edit icon-large" title="编辑"></i></a>', '<a  style="text-decoration:none" class="cancel" data-mode="new" href=""><i class="icon-ban-circle icon-large"  title="取消"></i></a>'
                ]);
                var nRow = oTable.fnGetNodes(aiNew[0]);//会刷新table
                editRow(oTable, nRow);
                nEditing = nRow;}
            });

            $('#sample_editable_1 a.delete').live('click', function (e) {
                e.preventDefault();
                if (confirm("确定要删除该条用户信息么 ?") == false) {
                    return;
                }

                var nRow = $(this).parents('tr')[0];
            	var tr = $(this).closest('tr')[0];//jquery对象转dom对象
                var deleteuser=tr.children[0].value;
                //$.post("deleteUser?deleteuser="+deleteuser);
                $.ajax({
                    url:"../sysUserController/deleteUser?deleteuser="+deleteuser,    //请求的url地址
                    async:false,
                    type:"POST",   //请求方式
                    success:function(data){
                    	if(data == '"success"'){
                        	oTable.fnDeleteRow(nRow);
                        	alert("已删除");
                    	}else if(data == '"noAuthority"'){
                    		alert("系统管理员不能被删除");
                    	}else if(data == '"error"'){
                    		alert("数据没有被删除");
                    	}

                    }
                    });
            });

            $('#sample_editable_1 a.cancel').live('click', function (e) {
                e.preventDefault();
                if ($(this).attr("data-mode") == "new") {
                    var nRow = $(this).parents('tr')[0];
                    oTable.fnDeleteRow(nRow);
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
            });
            $('#sample_editable_1 a.edit').live('click', function (e) {
                e.preventDefault();
                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];
//                console.log(this.innerHTML);
                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && this.innerHTML == '<i class="icon-save icon-large" title="保存"></i>') {
                    /* Editing this row and want to save it */
                	var tr = $(this).closest('tr')[0];//jquery对象转dom对象
                	if(tr.children[0].type=="hidden"){
                    	if(tr.children[1].children[0].value==''){
                    		alert("请输入用户名");
                    		return false;
                    	}
                    	if(tr.children[2].children[0].value==''){
                    		alert("请输入密码");
                    		return false;
                    	}
                    	var updateuser=tr.children[0].value+","+tr.children[1].children[0].value+","+tr.children[2].children[0].value;
                    	console.log("***"+updateuser);
                        //$.post("updateUser?updateuser="+updateuser);
                        //update
                        $.ajax({
                            url:"../sysUserController/updateUser?updateuser="+updateuser,    //请求的url地址
                            async:false,
                            type:"POST",   //请求方式
                            success:function(){
                            	saveRow(oTable, nEditing);
                                nEditing = null;
                                location.reload();
                            }
                            });
                    }
                	else{
                    	if(tr.children[0].children[0].value==''){
                    		alert("请输入用户名");
                    		return false;
                    	}
                    	if(tr.children[1].children[0].value==''){
                    		alert("请输入密码");
                    		return false;
                    	}
                		var user=tr.children[0].children[0].value+","+tr.children[1].children[0].value;
                        $.ajax({
                            url:"../sysUserController/addUser?user="+user,    //请求的url地址
                            async:false,
                            type:"POST",   //请求方式
                            success:function(){
                                saveRow(oTable, nEditing);
                                nEditing = null;
                                adds--;
                                location.reload();
                                
                            }
                            });
                	}
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow);
                    nEditing = nRow;
                }
            });
        }

    };

}();