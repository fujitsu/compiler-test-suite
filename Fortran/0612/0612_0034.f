        subroutine sub(r)
        real*8,value :: r
        real*8 sin!$pragma c(sin)
        if( (sin(%val(r))-dsin(r))/dsin(r) > 0.000001 ) then
          print *,'NG ',r,' ',sin(%val(r)),dsin(r)
        endif
        end
        interface
        subroutine sub(r)
        real*8,value :: r
        end subroutine sub
        end interface
	real*8 r
	do r=-3.14,3.14,0.1
        call sub(%val(r))
	end do
	print *,'PASS'
        end
