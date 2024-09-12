        subroutine sub(idummy,r)
        real*8,value :: r
        real*8 sin!$pragma c(sin)
        if( (sin(%val(r))-dsin(r))/dsin(r) > 0.000001 ) then
          print *,'NG ',r,' ',sin(%val(r)),dsin(r)
        endif
        end
        interface
        subroutine sub(idummy,r)
        real*8,value :: r
        end subroutine
        end interface
	real*8 r
	do r=-3.14,3.14,0.1
        call sub(1,%val(r))
	end do
	print *,'PASS'
        end
