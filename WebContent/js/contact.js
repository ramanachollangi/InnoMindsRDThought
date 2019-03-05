 $('document').ready(function()
    { 
            $("#cont").validate({
                rules: {
					name:"required",
				    email:"required",
				    subj:"required",
				    comm:"required",
							 },
			 messages: {
			 name:"please enter your name",
			 email: "Please enter a valid email address",
			 subj:"please enter your subject",
			 comm:"please enter your comment",
				  },
               
              
                submitHandler: function(form) {
                    form.submit();
                }
            });  

});
