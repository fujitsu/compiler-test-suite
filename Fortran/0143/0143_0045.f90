       module dat
         integer, pointer :: m(:, :)
         integer, pointer :: mm(:, :)
         integer, pointer :: w(:, :)
         integer, pointer :: ww(:, :)
       end module dat

       subroutine s1(n1, n2,n3,n4)
         use dat
         forall(i=1:n2:n3)
           m(i:i+n1, i) = mm(i:i+n4, i) + dble(i)
         end forall
       end subroutine
       subroutine s2(n1, n2,n3,n4)
         use dat
         forall(i=1:n2:n3)
           w(i:i+n1, i) = mm(i:i+n4, i) + dble(i)
           ww(i:i+n1, i) = mm(i:i+n4, i) + dble(i)
         end forall
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
         call s1(2  , DIM2,10,2)
         call s2(2  , DIM2,10,2)
if (sum(m)/=99) print *,1001
if (sum(w)/=99) print *,1002
if (sum(ww)/=99) print *,1003
print *,'pass'

       end program main
