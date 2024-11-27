           module mod
	   interface fun1
            module procedure fun1
	   end interface
	   interface fun2
	   end interface
	   contains
	   function fun1()
	   end function
	   function fun2()
	   end function
	   end module
	   end
