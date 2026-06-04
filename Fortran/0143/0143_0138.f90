module dat
         real(8), allocatable :: m(:, :, :)
       end module dat

       subroutine slow(n1, n2, n3)
         use dat
         implicit none
         integer, intent(in) :: n1, n2, n3
         integer :: i
         do concurrent(i=1:n2)
           m(1:n1, i, 1:n3) = m(1:n1, i, 1:n3) + dble(i)
         end do
       end subroutine

       program main
         use dat
         implicit none
         integer :: i
         integer, parameter :: DIM1=3, DIM2=8005, DIM3=70
         integer, parameter :: nbench = 1000
         real :: time1,time2

         call cpu_time(time1)

         allocate(m(DIM1, DIM2, DIM3))

         m(:, :, :) = 0

         do i = 1, nbench
           call slow(DIM1, DIM2, DIM3)
         end do

         deallocate(m)

         call cpu_time(time2)
         write(97,*)"Forall: time = ", time2-time1
print *,'pass'

       end program main
