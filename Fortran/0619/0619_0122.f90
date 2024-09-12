subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
parameter(a01=2.8_4)
parameter(b01=2.8_8)
parameter(c01=2.8_16)
parameter(na02=ceiling(kind=4,a=a01))
parameter(nb02=ceiling(b01,kind=4))
parameter(na12=kind(ceiling(kind=4,a=a01)))
parameter(nb12=kind(ceiling(b01,kind=4)))
parameter(na22=kind(ceiling(kind=8,a=a01)))
parameter(nb22=kind(ceiling(b01,kind=1)))
if (na12/=4)print *,201
if (nb12/=4)print *,202
if (na22/=8)print *,211
if (nb22/=1)print *,212
call ssa(na02,a01)
call ssb(nb02,b01)
contains
subroutine ssa(a2,a1)
implicit real(4)(a)
integer::a2
if (a2/=ceiling(a1))print *,101,a2,a1
end subroutine
subroutine ssb(a2,a1)
implicit real(8)(a)
integer::a2
if (a2/=ceiling(a1))print *,102,a2,a1
end subroutine
subroutine ssc(a2,a1)
implicit real(16)(a)
integer::a2
if (a2/=ceiling(a1))print *,103,a2,a1
end subroutine
end
call s1
print *,'pass'
end
