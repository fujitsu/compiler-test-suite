	module mod
	public :: ent
	private
	contains
	subroutine sub()
	call inn
	contains 
          subroutine inn
          print *,'PASS'
          end subroutine
	end subroutine 
	subroutine ent()
          call sub
	end subroutine 
	end module
!
	subroutine sub()
	call inn
	contains 
          subroutine inn
          use mod
          call ent
          end subroutine
	end
!
	call sub
	end


