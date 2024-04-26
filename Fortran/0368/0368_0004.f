	function fun1(arg) result(res)
	real,dimension(:)::arg
	real,dimension(-1:1)::res
	res=arg 
	end
	program main
	  interface
	    function fun1(arg) result(res)
	    real,dimension(:)::arg
	    real,dimension(-1:1)::res
	    end function
          end interface
	real,dimension(-1:1)::aaa
	aaa = -1
	print *,fun1(aaa)
	end
