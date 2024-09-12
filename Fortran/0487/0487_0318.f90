 module m1
   type x
      integer::x1=1
      integer ,allocatable::x4(:)
   end type x
 contains
   subroutine s1(a)
     type(x),intent(out):: a(:)
   end subroutine s1
 end module m1
 use m1
 type(x):: a(3)
 call s1(a)
 print *,'pass'
 end 
