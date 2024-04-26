       module dat
         integer, pointer :: m(:, :, :)
         integer, pointer :: mm(:, :, :)
         integer, pointer :: t(:, :, :)
       end module dat

       subroutine s1(n1, n2,n3)
         use dat
         forall(i=1:n2:n3)
           m(i:i+n1, i, i:i+n1) = m(i:i+n1, i, i:i+n1) + dble(i)
         end forall
       end subroutine
       subroutine s2(n1, n2,n3)
         use dat
         do i=1,n2,n3
           t(i:i+n1, i, i:i+n1) = mm(i:i+n1, i, i:i+n1) + dble(i)
         end do
         do i=1,n2,n3
           mm(i:i+n1, i, i:i+n1) = t(i:i+n1, i, i:i+n1)
         end do
       end subroutine

       program main
         use dat
         integer, parameter :: DIM1=32, DIM2=30, DIM3=32

         allocate(m(DIM1, DIM2, DIM3))
         allocate(mm(DIM1, DIM2, DIM3))
         allocate(t(DIM1, DIM2, DIM3))

         m(:, :, :) = 0
         mm(:, :, :) = 0
         t(:, :, :) = 0

       do n=1,3
         call s1(2  , DIM2,10)
       end do
       do n=1,3
         call s2(2  , DIM2,10)
       end do
if (any(m/=mm)) print *,'error'
print *,'pass'

       end program main
