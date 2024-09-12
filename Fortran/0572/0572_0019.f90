module m1
    type x
      integer,allocatable::x2(:)
    end type
 contains
 integer function   s(a,v)
 integer :: a        
 type (x):: v
 s=1
 end function
 end module

 subroutine s1
 use m1
 type (x):: v1
 if (s(3,(v1))/=1) print *,101
 end subroutine

 call s1
 print *,'pass'
 end

