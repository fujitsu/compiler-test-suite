       module dat
         integer, allocatable :: m(:, :, :)
         integer, allocatable :: mm(:, :, :)
         integer, allocatable :: t(:, :, :)
       end module dat

       subroutine s1(n1, n2,n3)
         use dat
         forall(i=1:n2:n3)
           m(i:i+n1, i, i:i+n1) = m(i:i+n1, i, i:i+n1) + dble(i)
         end forall
       end subroutine
       program main
         use dat
         integer, parameter :: DIM1=32, DIM2=30, DIM3=32

         allocate(m(DIM1, DIM2, DIM3))

         m(:, :, :) = 0

         call s1(2  , DIM2,10)
if (sum(m)/=297) print *,102
print *,'pass'

       end program main

