      program main
       integer :: i,n
       real :: x,y,d,x1
       real,dimension(:),allocatable :: px,py
       intrinsic nint
       external runge
       x=0.0; y=1.0; d=0.1; x1=1.0
       n=nint((x1-x)/d)+1
       allocate(px(n),py(n))
       call runge(x,y,d,n,px,py)
       do i=1,n
          write(*,'(f16.2,f16.2)') px(i),py(i)
       end do
       print *,'pass'
       deallocate(px,py)
      end program main
      function f(x,y) result(res)
       real :: x,y,res
       res=x-y       
      end function f
      subroutine runge(x,y,d,n,px,py)
       real ,intent(in) :: x,y,d
       integer,intent(in) :: n
       real,dimension(n),intent(out) :: px,py
       integer :: i
       real :: d1,d2,d3,d4,x0,y0
       real,external :: f
       x0=x;y0=y
       px(1)=x0;py(1)=y0
       do i=2,n
          d1=d*f(x0,y0)
          d2=d*f(x0+d/2.,y0+d1/2.)
          d3=d*f(x0+d/2.,y0+d2/2.)
          d4=d*f(x0+d,y0+d3)
          x0=x0+d
          y0=y0+(d1+2*d2+2*d3+d4)/6.
          px(i)=x0;py(i)=y0
       end do
      end subroutine runge
