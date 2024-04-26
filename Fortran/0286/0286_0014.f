	module mod
	contains
	subroutine sub()
	call inn
	contains 
          subroutine inn
          print *,'PASS'
          end subroutine
	end subroutine 
	end module
!
	subroutine sub()
	call inn
	contains 
          subroutine inn
          use mod
          call sub
          end subroutine
	end
!
	call sub
	end


