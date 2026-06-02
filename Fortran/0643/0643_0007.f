	program main
	implicit none
	intrinsic dlog
	call test(dlog)
	end
	subroutine test(x)
	implicit none
	integer    i, cnt
	parameter  (cnt=100000)
	dimension  r(cnt)
	real*8     r,x,ind,step,START_DATA,END_DATA
	external   x
	START_DATA = 0.001
	END_DATA   = cnt
        ind = START_DATA
        step = (END_DATA-START_DATA)/cnt
	do i=1,cnt
	r(i) = dlog(ind)
	ind=ind+step
	enddo
        call check(r,cnt,START_DATA,step,x)
	print *,"PASS"
        end
        subroutine check(r,cnt,START_DATA,step,x)
        implicit none
        integer    i, cnt
        dimension  r(cnt)
        real*8     r,x,ind,START_DATA,step
        real*8     r1,r2
        ind = START_DATA
        do i=1,cnt
          r1 =  r(i)
          r2 =  x(ind)
          if( abs((r1-r2)/r2) .gt. 1e-9 ) then
            print "(1h ,z16.16,a,z16.16)",r1,".ne.",r2
          endif
          ind=ind+step
        enddo
	end
