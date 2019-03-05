 $('document').ready(function()
    { 
            $("#login").validate({
                rules: {
                	mobile:{
                    	required: true,
                    	minlength:10
                   },
                   password: {
                        required: true,
                        minlength: 8
                    },


		 },
                messages: {
                	mobile:"please enter your phone number",
                	password: {
                        required: "Please provide a password",
                        minlength: "Password at least have 8 characters"
                    },

						     },
               
              
                submitHandler: function(form) {
                    form.submit();
                }
            });  

});
