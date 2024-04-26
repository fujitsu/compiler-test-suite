	program main
	intrinsic sqrt,dsqrt
	real*4 r4fun
	real*8 r8fun
        real,PARAMETER::ANS1=1.00000012
        real,PARAMETER::ANS2=1.0

        do i=1,100,20
          if( r4fun(sqrt,i) / sqrt(real(i)) > ANS1 ) then
             print *,' NG '
          endif
          if( r8fun(dsqrt,i) / dsqrt(dble(i)) > ANS2 ) then
             print *,' NG '
          endif
        end do
        print *,' PASS '
        end
        real*4 function r4fun(ext,i)
        real*4 ext
        r4fun = ext(real(i))
        end
        real*8 function r8fun(ext,i)
        real*8 ext
        r8fun = ext(dble(i))
        end
