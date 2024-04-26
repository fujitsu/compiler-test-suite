	subroutine BASIC
        real*4 r4
	real*8 r8
	data r4/-2.2/
	data r8/-3.3d0/
	print *,abs(r4)
	print *,abs(r8)
	end
	subroutine sub1(r)
	print *,abs(r+1.0)
	print *,2.+abs(r+1.0)
	end
!
	call BASIC
	call sub1(-1.0)
	end

