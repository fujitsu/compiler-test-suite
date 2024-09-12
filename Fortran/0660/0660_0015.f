      program main
       real :: x0,eps,ans
       logical :: error
       external Newton  
       x0=20.0        
       eps=1.0e-6
       call Newton(x0,eps,ans,error)
       if (error) then
           write(*,*) 'error'
       else
           write(*,'(f10.6)') ans
       end if
       print *,'pass'
      end program main
      function f(x) result(res)
       real :: x,res
       res=x**2-2*x-2
      end function f
      function df(x) result(res)
       real :: x,res
       res=2*x-2      
      end function df
      subroutine Newton(a,eps,ans,error)
       real,intent(in) :: a,eps
       real,intent(out) :: ans
       logical,intent(out) :: error
       integer :: i,n
       real :: x0,x
       real,external :: f,df
       intrinsic abs
       x0=a
       n=100 
       do i=1,n
          x=x0-f(x0)/df(x0)
          if (abs(x-x0)<=eps) exit
          x0=x
       end do
       if (i<=n) then
           ans=x
           error=.false.
       else 
           error=.true.
       end if
      end subroutine Newton      
