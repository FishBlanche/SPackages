var Login = function () {
    
    return {
        //main function to initiate the module
        init: function () {
        	
           $('.login-form').validate({
	            errorElement: 'label', //default input error message container
	            errorClass: 'help-inline', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            rules: {
	                username: {
	                    required: true
	                },
	                password: {
	                    required: true
	                },
	                remember: {
	                    required: false
	                }
	            },

	            messages: {
	                username: {
	                    required: "<p style='color:red;'>用户名不能为空</p>"
	                },
	                password: {
	                    required: "<p style='color:red;'>密码不能为空</p>"
	                }
	            },

	            invalidHandler: function (event, validator) { //display error alert on form submit   
	                $('.alert-error', $('.login-form')).show();
	            },

	            highlight: function (element) { // hightlight error inputs
	                $(element)
	                    .closest('.control-group').addClass('error'); // set error class to the control group
	            },

	            success: function (label) {
	                label.closest('.control-group').removeClass('error');
	                label.remove();
	            },

	            errorPlacement: function (error, element) {
	                error.addClass('help-small no-left-padding').insertAfter(element.closest('.input-icon'));
	            },

	            submitHandler: function (form) {
	            	var data = $("#login").serialize();
					$.post(''+ctx+'app/loginController/login', data, function(result) {
						if (result.success) {
			                window.location.href = "index.jsp";
						} else {
							alert("用户名或密码错误");
						}
					}, "JSON");
	            }
	        });



	      $.backstretch([
		        ""+ctx+"image/bg/1.jpg",
		        ""+ctx+"image/bg/2.jpg",
		        ""+ctx+"image/bg/3.jpg",
		        ""+ctx+"image/bg/4.jpg"
		        ], {
		          fade: 1000,
		          duration: 5000
		      });
        }

    };

}();