program main
use ieee_arithmetic
integer*4, parameter::P = 5
integer*4::f = ieee_selected_real_kind(P)
integer*4::k = kind(ieee_selected_real_kind(P))

print*, f, '---',ieee_selected_real_kind(P)
if(f.ne.ieee_selected_real_kind(P)) then
print*, '??? (Error: I4 - I) ???'
else
print*, "I4 - I OK"
endif

call check(k, kind(ieee_selected_real_kind(P)))

End

subroutine check(x, y)
integer x,y
if(x.ne.y) then
print*, '??? (Error: Kind) ???'
else
print*, "Kind OK"
endif
end subroutine
