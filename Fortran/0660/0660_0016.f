      program main
       integer :: n
       real :: a,b
       real,external :: Integral
       write (8,*) -2.0,2.0,100
       rewind 8
       read (8,*) a,b,n
       s=Integral(a,b,n)
       write(*,'(f10.5)') s
       print *,'pass'
      end program main
      function f(x) result(res)
       real :: x,res
       res=x**2-2*x+2
      end function f
      function Integral(a,b,n) result(s)
       integer :: n
       real :: a,b
       real :: h,s
       real,external :: f
       h=(b-a)/n
       s=(f(a)+f(b))/2.0
       do i=1,n-1
          s=s+f(a+i*h)
       end do
       s=h*s
      end function Integral    
