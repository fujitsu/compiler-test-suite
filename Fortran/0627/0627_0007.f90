module     m2
integer          ::ieee_arithmetic=1
integer          ::IEEE_SELECTED_REAL_KIND=2
end
subroutine s00
use, intrinsic :: ieee_arithmetic,only=>IEEE_SELECTED_REAL_KIND
integer :: i=only(6,30)
integer :: a=sin(0.1)
if (i/=4)print *,101
write(4,*) a
end
subroutine s0
use, intrinsic :: ieee_arithmetic,only:IEEE_SELECTED_REAL_KIND
integer :: i=IEEE_SELECTED_REAL_KIND(6,30)
integer :: a=sin(0.1)
if (i/=4)print *,101
write(4,*) a
end
subroutine s1
use, intrinsic :: ieee_arithmetic
integer :: i=IEEE_SELECTED_REAL_KIND(6,30)
integer :: a=sin(0.1)
if (i/=4)print *,101
write(4,*) a
end
subroutine s2
use m2
if (ieee_arithmetic/=1)print *,201
if (IEEE_SELECTED_REAL_KIND/=2)print *,202
end
subroutine s3
use m2,only:IEEE_SELECTED_REAL_KIND,ieee_arithmetic
if (ieee_arithmetic/=1)print *,301
if (IEEE_SELECTED_REAL_KIND/=2)print *,302
end
subroutine s4
use m2,n1=>IEEE_SELECTED_REAL_KIND,n2=>ieee_arithmetic
if (n2/=1)print *,401
if (n1/=2)print *,402
end
subroutine s5
interface
 pure function IEEE_SELECTED_REAL_KIND()
 end function
end interface
integer x(IEEE_SELECTED_REAL_KIND())
x(1)=1
if (x(1)/=1)print *,501
end
 pure function IEEE_SELECTED_REAL_KIND()
   IEEE_SELECTED_REAL_KIND=1 
 end function
call s0
call s00
call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
