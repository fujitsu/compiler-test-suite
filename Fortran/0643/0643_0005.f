	program main
	implicit none
	intrinsic anint
	call test(anint)
	end
	subroutine test(x)
	implicit none
	integer    i, cnt
	parameter  (cnt=100000)
	dimension  r(cnt)
	real*4     r,x,ind,step,START_DATA,END_DATA
	external   x
	START_DATA =  100000.0e0
	END_DATA   = -100000.0e0
        ind = START_DATA
        step = (END_DATA-START_DATA)/cnt
	do i=1,cnt
	r(i) = anint(ind)
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
          if( r1 .ne. r2 ) then
            print "(1h ,z16.16,a,z16.16)",r1,".ne.",r2
          endif
          ind=ind+step
        enddo
	end
