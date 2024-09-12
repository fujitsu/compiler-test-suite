module m1
    type x
      integer,allocatable::x2(:)
    end type
 contains
 integer function   s(v)
 type (x):: v
 s=1
 end function
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
 if (s((v1))/=1) print *,101
 end subroutine


