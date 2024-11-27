           module mod
	   interface sub1
            module procedure sub1
	   end interface
	   interface sub2
	   end interface
	   contains
	   subroutine sub1()
	   end subroutine
	   subroutine sub2()
	   end subroutine
	   end module
	   end
