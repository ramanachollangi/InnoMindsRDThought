 $('document').ready(function()
    { 
            $("#dairy").validate({
                rules: {
                	date:"required",
                	textArea:"required",
					 },
			 messages: {
				 date:"please enter your date",
				 textArea: "Please enter dairy",
			  },
               
              
                submitHandler: function(form) {
                    form.submit();
                }
            });  

});
