module m1
    type x
      integer,allocatable::x2(:)
    end type
 contains
 integer function   s(v)
 type (x):: v
 s=1
 end function

 subroutine s1
 type (x):: v1
 if (s((v1))/=1) print *,101
 end subroutine

 subroutine s2
 call s1
 print *,'pass'
 end subroutine
 end module

 use m1
 call s2
 end

