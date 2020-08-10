$.validator.setDefaults({
    submitHandler:function(){
        alert("submitted!");
    }
});

$().ready(function() {
	$("#signupForm").validate({
		rules: {
			Fname: "required",
			Lname: "required",
			Pass: {
				required: true,
				minlength: 8
			},
			gender:"required",
			hobby:{
			    required:true,
			    minlength:2
			},
			Pass_confirm: {
				equalTo: "#Pass",
				required:true
			}
		},
		messages:  {
		    fname:"Please enter your first name!",
		    lname:"Please enter your last name!",
		    gender:"Please select your gender!",
		    Pass:{
		        required:"Please enter your password!",
		        minlength:"Your password must be at least 8 characters long!"
		    },
		    Pass_confirm:{
		        equalTo:"Password is not the same!",
		        required:"Please enter your password!"
		    },
		    hobby:"Please select at least 2 topics!"
		},
		errorPlacement: function(error, element)
        {
            if ( element.is(":radio") )
            {
                error.insertAfter( element.parents('div') );
            }
            else if ( element.is(":checkbox") )
            {
                error.insertAfter( element.parents('div') );
            }
            else
            { // This is the default behavior
                error.insertAfter( element );
            }
         }
	});
});