var Lock = function () {

    return {
        //main function to initiate the module
        init: function () {

             $.backstretch([
		        "${ctx}image/bg/1.jpg",
		        "${ctx}image/bg/2.jpg",
		        "${ctx}image/bg/3.jpg",
		        "${ctx}image/bg/4.jpg"
		        ], {
		          fade: 1000,
		          duration: 8000
		      });
        }

    };

}();