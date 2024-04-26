program main
use ieee_arithmetic
integer*4, parameter::P = 5
integer*4, parameter::Q = 3
integer*4::f = 4
integer*4::k = kind(ieee_selected_real_kind(P, Q))

write(1,*)  f, '---',ieee_selected_real_kind(P=P, R=Q)
if(f.ne.ieee_selected_real_kind(P, Q)) then
print*, '??? (Error: I4 - I) ???'
else
write(1,*) "I4 - I OK"
endif

call check(k, kind(ieee_selected_real_kind(P, Q)))

End

subroutine check(x, y)
integer x,y
if(x.ne.y) then
print*, '??? (Error: Kind) ???'
else
print*, "pass"
endif
end subroutine
