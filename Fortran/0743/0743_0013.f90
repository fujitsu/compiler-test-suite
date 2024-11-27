module work
   implicit none

contains

subroutine array_sum2(x, s)
   real :: x(:,:), s

   integer :: i, j

   s = 0.0
   do j=1,size(x,2)
      do i=1,size(x,1)
         s = s + x(i,j)
      end do
   end do
end subroutine array_sum2

subroutine array_sum3(x, s)
   real :: x(:,:), s

   s = SUM(x)
end subroutine array_sum3

end module work

program AssumedShapeArray
   use work

   integer, parameter :: m=256, n=512, u=1, itmax=1000

   real :: x(m,m)
   real :: y(n,n)
   real :: s, t0, t
   integer :: iter

   write(2,*)"program started ..."

   call random_number(y)
   x(:,:) = y(2:n:2,2:n:2)

   call CPU_time(t0)
   do iter=1,itmax
      call array_sum0(x,m,s)
   end do
   call CPU_time(t)
   write(u,100) "f77 loop, contiguous array,  sum =", s, "  time =", t-t0

   call CPU_time(t0)
   do iter=1,itmax
      call array_sum1(y,n,s)
   end do
   call CPU_time(t)
   write(u,100) "f77 loop, stride 2x2 array,  sum =", s, "  time =", t-t0

   call CPU_time(t0)
   do iter=1,itmax
      call array_sum2(x,s)
   end do
   call CPU_time(t)
   write(u,100) "f90 loop, contiguous array,  sum =", s, "  time =", t-t0

   call CPU_time(t0)
   do iter=1,itmax
      call array_sum2(y(2:n:2,2:n:2),s)
   end do
   call CPU_time(t)
   write(u,100) "f90 loop, stride 2x2 array,  sum =", s, "  time =", t-t0

   call CPU_time(t0)
   do iter=1,itmax
      call array_sum3(y(2:n:2,2:n:2),s)
   end do
   call CPU_time(t)
   write(u,100) "f90 SUM(stride 2x2 array),   sum =", s, "  time =", t-t0

   write(2,*) " ... program ended."

   100 format(2(a,f12.6))
print *,'pass'
end program

subroutine array_sum0(x,n,s)
   implicit none

   integer :: n
   real :: x(n,*), s

   integer :: i, j

   s = 0.0
   do j=1,n
      do i=1,n
         s = s + x(i,j)
      end do
   end do
end subroutine array_sum0

subroutine array_sum1(x,n,s)
   implicit none

   integer :: n
   real :: x(n,n), s

   integer :: i, j

   s = 0.0
   do j=2,n,2
      do i=2,n,2
         s = s + x(i,j)
      end do
   end do
end subroutine array_sum1
