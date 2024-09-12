      program main
       integer :: n
       real :: a,b,s
       real,external :: simpson 
       write (8,*) -2.0,2.0,100
       rewind 8
       read (8,*) a,b,n
       s=simpson(a,b,n)
       write(*,'(f10.5)') s
       print *,'pass'
      end program main
      function f(x) result(res)
       real :: x,res
       intrinsic exp
       res=exp(x)       
      end function f
      function simpson(a,b,n) result(s)
       integer :: i,n
       real :: a,b,h,s
       real,external :: f
       h=(b-a)/(2.*n)
       s=f(a)+f(b)
       do i=1,n
          s=s+4.*f(a+(2*i-1)*h)
       end do
       do i=1,n-1
          s=s+2.*f(a+2*i*h)     
       end do
       s=s*h/3.
      end function simpson     
