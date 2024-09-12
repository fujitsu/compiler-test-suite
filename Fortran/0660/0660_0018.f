      program main
       integer :: i,n
       real :: x,y,d,x1
       real,dimension(:),allocatable :: px,py
       intrinsic nint
       external enler
       x=0.0; y=1.0; d=0.1; x1=1.0
       n=nint((x1-x)/d)+1
       allocate(px(n),py(n))
       call enler(x,y,d,n,px,py)
       do i=1,n
          write(*,'(F7.1,F7.1)') px(i),py(i)
       end do
       deallocate(px,py)
       print *,'pass'
      end program main
      function f(x,y) result(res)
       real :: x,y,res
       res=x/5.+y       
      end function f
      subroutine enler(x,y,d,n,px,py)
       real ,intent(in) :: x,y,d
       integer,intent(in) :: n
       real,dimension(n),intent(out) :: px,py
       integer :: i
       real :: x0,y0
       real,external :: f
       x0=x;y0=y
       px(1)=x0;py(1)=y0
       do i=2,n
          y0=y0+d*f(x0,y0)
          x0=x0+d
          px(i)=x0;py(i)=y0
       end do
      end subroutine enler
