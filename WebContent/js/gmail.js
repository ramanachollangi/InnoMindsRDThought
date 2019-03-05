 $('document').ready(function()
    { 
            $("#form30").validate({
                rules: {
                	apsUserName:"required",
                   apsPassword: {
                        required: true,
                        minlength: 8
                    },


		 },
                messages: {
                	apsUserName:"please enter your username",
                	apsPassword: {
                        required: "Please provide a password",
                        minlength: "Password at least have 8 characters"
                    },

						     },
               
              
                submitHandler: function(form) {
                    form.submit();
                }
            });  

});
 $('document').ready(function()
		    { 
		            $("#form1").validate({
		                rules: {
		                	apsUserName:"required",
		                	apsPassword: {
		                        required: true,
		                        minlength: 8
		                    },
				 },
		                messages: {
		                	apsUserName:"please enter your username",
		                	apsPassword: {
		                        required: "Please provide a password",
		                        minlength: "password should have atleast 8 characters"
		                    },

								     },
		               
		              
		                submitHandler: function(form) {
		                    form.submit();
		                }
		            });  

		});