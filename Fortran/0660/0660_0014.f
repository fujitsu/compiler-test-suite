      program main
       real :: x0,x1,eps,ans
       logical :: error
       external Equation
       x0=0.5;x1=10.0
       eps=1.0e-6
       call Equation(x0,x1,eps,ans,error)
       if (error) then
           write(*,*) 'error'
       else
           write(*,*) ans
       end if
       print *,'pass'
      end program main
      function f(x) result(res)
       real :: x,res
       intrinsic log
       res=log(x) 
      end function f
      subroutine Equation(a,b,eps,ans,error)
       real,intent(in) :: a,b,eps
       real,intent(out) :: ans
       logical,intent(out) :: error
       integer :: i,n
       real :: x0,x1,xm
       real,external :: f
       intrinsic abs
       x0=a;x1=b
       n=100 
       do i=1,n
          xm=(x0+x1)/2.
          if (f(x0)*f(xm)<0.) then
            x1=xm
          else 
            x0=xm
          end if
          if (abs(x1-x0)<eps) exit
       end do
       if (i<=n) then
           ans=xm
           error=.false.
       else 
           error=.true.
       end if
      end subroutine Equation    
