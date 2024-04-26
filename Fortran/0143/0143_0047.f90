       module dat
         integer, pointer :: m(:, :)
         integer, pointer :: mm(:, :)
         integer, pointer :: w(:, :)
         integer, pointer :: ww(:, :)
         integer::k=1
       end module dat

       subroutine s1(n1, n2,n3,n4,n5,n6)
         use dat
         forall(i=1:n2:n3)
           m(k+n5:k+n1:n6, i+n5) = m(k+n5:k+n4:n6, i+n5) + i
         end forall
       end subroutine
       subroutine s2(n1, n2,n3,n4,n5,n6)
         use dat
         do i=1,n2,n3
           ww(k+n5:k+n1:n6, i+n5) = w(k+n5:k+n4:n6, i+n5) + i
         end do
         do i=1,n2,n3
           w(k+n5:k+n1:n6, i+n5) = ww(k+n5:k+n4:n6, i+n5) 
         end do
       end subroutine
       program main
         use dat
         integer, parameter :: DIM1=32, DIM2=30

         allocate(m(DIM1, DIM2))
         allocate(mm(DIM1, DIM2))
         allocate(w(DIM1, DIM2))
         allocate(ww(DIM1, DIM2))

         m(:, :) = 0
         mm(:, :) = 0
         w(:, :) = 0
         ww(:, :) = 0
         call s1(2  , DIM2,10,2,0,1)
         call s2(2  , DIM2,10,2,0,1)
if (sum(m)/=99) print *,1001,sum(m)
if (sum(w)/=99) print *,1002,sum(w)
print *,'pass'

       end program main
