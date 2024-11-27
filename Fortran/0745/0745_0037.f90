	program main
	implicit none
	intrinsic sqrt
	call test(sqrt)
	end
	subroutine test(x)
	implicit none
	integer    i, cnt
	parameter  (cnt=1000000)
	dimension  r(cnt)
	real*4     r,x,ind,step,START_DATA,END_DATA
	external   gethrtime,x
	integer*8  start, end,gethrtime
	START_DATA = 0.0
	END_DATA   = cnt
        ind = START_DATA
        step = (END_DATA-START_DATA)/cnt
	start = gethrtime()
	do i=1,cnt
	r(i) = sqrt(ind)
	ind=ind+step
	enddo
	end = gethrtime()
 	start = (end - start) * 1000  /  1000000000
	print *,"pass"
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
        function gethrtime()
        integer*8  gethrtime
        gethrtime=0
        end
