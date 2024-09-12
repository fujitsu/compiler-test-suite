subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
parameter(a01=2.8_4)
parameter(b01=2.8_8)
parameter(c01=2.8_16)
parameter(a02=modulo(a01,a01))
parameter(b02=modulo(b01,b01))
call ssa(a02,a01)
call ssb(b02,b01)
contains
subroutine ssa(a2,a1)
implicit real(4)(a)
if (a2/=modulo(a1,a1))print *,101,a2,a1
end subroutine
subroutine ssb(a2,a1)
implicit real(8)(a)
if (a2/=modulo(a1,a1))print *,102,a2,a1
end subroutine
subroutine ssc(a2,a1)
implicit real(16)(a)
if (a2/=modulo(a1,a1))print *,103,a2,a1
end subroutine
end
call s1
print *,'pass'
end
