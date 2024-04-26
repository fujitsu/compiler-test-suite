      program main   
       integer :: n
       real :: a,b,h,s,t,v
       real,external :: f
       write (8,*) -2.0,2.0,100
       rewind 8
       read (8,*) a,b,n
       h=(b-a)/(2.*n)
       t=f(a)+f(b)
       do i=1,n
         v=a+(2*i-1)*h
         t=t+exp(v)*4.0
       enddo
       s=f(a)+f(b)
       do i=1,n
          s=s+4.*f(a+(2*i-1)*h)
       end do
       if(abs(t-s).lt.abs(t)/1.0d6 .and. abs(t-s).lt.abs(s)/1.0d6) then
         print *,'ok'
       else
         print *,'ng'
         write(*,'(f10.5)') s
         write(*,'(f10.5)') t
       endif
      end program main 
      function f(x) result(res)
       real :: x,res
       intrinsic exp,sin
       res=exp(x)
      end function f
