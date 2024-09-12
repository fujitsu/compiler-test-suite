module m1
    type x
      integer,allocatable::x2(:)
    end type
 contains
 integer function   s(v)
 type (x):: v(2,3)
 s=1
 end function
 end module

 subroutine s1
 use m1
 type (x):: v1(2,3)
 if (s((v1))/=1) print *,101
 end subroutine

 call s1
 print *,'pass'
 end

