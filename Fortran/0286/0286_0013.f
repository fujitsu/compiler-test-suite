	module mod
	public :: ent
	private
	contains
	integer function sub()
	sub = inn() + 1
	contains 
          integer function inn()
          inn = 1
          end function
	end function 
        integer function ent()
           ent = sub()
        end function
	end module
!
	integer function sub()
	sub = inn() + 1
	contains 
          integer function inn()
          use mod
          inn = ent() + 1
          end function
	end
!
	integer sub
	i = sub()
	if( i == 4 ) then
        print *,'PASS'
        else
        print *,'NG'
        endif
	end


