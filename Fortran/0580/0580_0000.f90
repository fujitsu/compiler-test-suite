 module m1
 type x
 integer,allocatable::x2(:)
 end type
 contains
 elemental subroutine s(v)
 type (x), intent(in):: v
 end subroutine
 end module

 subroutine s1
 use m1
 type (x):: v1

 call s((v1))

 print *,'pass'
 end subroutine
 
 call s1
 end


