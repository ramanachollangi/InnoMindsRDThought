
$('document').ready(function()
    { 
            $("#signup").validate({
                rules: {
					    name:"required",
					    email: {
	                        required: true,
	                        email: true
	                    },
				        mobile:{
                    	required: true,
                    	minlength:10
                                },
                        password:"required",

		 },
                messages: {
			     name:"please enter your name",
				 email: "Please enter a valid email address",
			     mobile:"please enter your phone number",
			     password:{
			    	 required:"please enter your password",
			    	 minlength:"please minimum 8 characters" 
			     }
					     },
               
              
                submitHandler: function(form) {
                    form.submit();
                }
            });  

});
