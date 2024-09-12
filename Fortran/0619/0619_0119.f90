subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
parameter(a01=huge(1.0_4))
parameter(b01=huge(1.0_8))
parameter(c01=huge(1.0_16))
parameter(a02=aint(a01))
parameter(b02=aint(b01))
parameter(c02=aint(c01))
call ssa(a02,a01)
call ssb(b02,b01)
call ssc(c02,c01)
contains
subroutine ssa(a2,a1)
implicit real(4)(a)
if (a2/=aint(a1))print *,101,a2,a1
end subroutine
subroutine ssb(a2,a1)
implicit real(8)(a)
if (a2/=aint(a1))print *,102,a2,a1
end subroutine
subroutine ssc(a2,a1)
implicit real(16)(a)
if (a2/=aint(a1))print *,103,a2,a1
end subroutine
end
call s1
print *,'pass'
end
