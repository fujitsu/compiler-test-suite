use ieee_arithmetic
call sub(5)
print *,'pass'
contains
subroutine sub(n)
integer, parameter::k = 5
integer:: a( ieee_selected_real_kind(n) )
integer:: b( ieee_selected_real_kind(k) )= 2
if (size( a )/=4) print *,301
if (size( b )/=4) print *,302
if (any( b/=2 )) print *,303
a=[1,2,3,4]
if (any( a/=[1,2,3,4] )) print *,304
end subroutine
end
