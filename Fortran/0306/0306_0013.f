       program main
       integer :: n
       real :: a,b,s,t,res
       real,external :: f
       a = -2.0
       b = 2.0
       n = 10
       s=f(a)+f(b)

       do i=1,n
         t = f(a+(2*i-1)*0.02)
         s = s+t
       end do

       res = abs(s - 9.188)

       if (res .ge. 1.0) then
         print*, "NG"
         print*, s
       else
         print*, "OK"
       endif

       end program main
       function f(x) result(res)
       real :: x,res
       intrinsic exp,sin
       res=exp(x)
       end function f
