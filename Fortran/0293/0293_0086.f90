subroutine s
real(4)::a1=1.2345
real(8)::a2=1.2345
call s4(aint(a1))
call s8(dint(a2))
call s8(aint(a2))
call s4(aint(a1,kind=4))
call s4(aint(a2,kind=4))
call s8(aint(a1,kind=8))
call s8(aint(a2,kind=8))
contains
subroutine s4(r)
real(4)::r
if (abs(r-1.)>0.0001)print *,101,r
end subroutine
subroutine s8(d)
real(8)::d
if (abs(d-1.)>0.0001)print *,102,d
end subroutine
end
call s
print *,'pass'
end
