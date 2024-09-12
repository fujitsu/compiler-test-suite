program main
use ieee_arithmetic
integer*8, parameter::P = 5
integer*8, parameter::Q = 3
integer*8::f = ieee_selected_real_kind(P, Q)
integer*8::k = kind(ieee_selected_real_kind(P, Q))
integer*8::l
l = kind(ieee_selected_real_kind(P, Q))

print*, f, '---',ieee_selected_real_kind(P, Q)
if(f.ne.ieee_selected_real_kind(P, Q)) then
print*, '??? (Error: I4 - I) ???'
else
print*, "I4 - I OK"
endif
call check(k, l)
End

subroutine check(x, y)
integer*8 :: x,y
if(x.ne.y) then
print*, '??? (Error: Kind) ???'
else
print*, "Kind OK"
endif
end subroutine
