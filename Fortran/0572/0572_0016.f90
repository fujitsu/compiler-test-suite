module m1
    type x
      integer,allocatable::x2(:)
    end type
 contains
 subroutine   s(v)
 type (x):: v
 end subroutine
 end module

 interface
 subroutine s1
 end subroutine
 end interface
 
 call s1
 print *,'pass'
 end
 
 subroutine s1
 use m1
 type (x):: v1
 call s((v1))
 end subroutine


