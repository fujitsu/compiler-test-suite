	program main
	implicit none
	intrinsic alog
	call test(alog)
	end
	subroutine test(x)
	implicit none
	integer    i, cnt
	parameter  (cnt=100000)
	dimension  r(cnt)
	real*4     r,x,ind,step,START_DATA,END_DATA
	external   x
	START_DATA = 0.1
	END_DATA   = cnt
        ind = START_DATA
        step = (END_DATA-START_DATA)/cnt
	do i=1,cnt
	r(i) = log(ind)
	ind=ind+step
	enddo
        call check(r,cnt,START_DATA,step,x)
	print *,"PASS"
        end
        subroutine check(r,cnt,START_DATA,step,x)
        implicit none
        integer    i, cnt
        dimension  r(cnt)
        real*4     r,x,ind,START_DATA,step
        real*4     r1,r2
        ind = START_DATA
        do i=1,cnt
          r1 =  r(i)
          r2 =  x(ind)
          if( abs((r1-r2)/r2) .gt. 1e-6 ) then
            print "(1h ,z8.8,a,z8.8)",r1,".ne.",r2
          endif
          ind=ind+step
        enddo
	end
