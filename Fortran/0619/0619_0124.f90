subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
parameter(ap= 0.0)
parameter(am=-0.0)
parameter(bp= 0.0)
parameter(bm=-0.0)
parameter(cp= 0.0)
parameter(cm=-0.0)
parameter(a0= 1)
parameter(a2=sign(a0,ap))
parameter(a3=sign(a0,am))
parameter(b0= 1)
parameter(b2=sign(b0,bp))
parameter(b3=sign(b0,bm))
parameter(c0= 1)
parameter(c2=sign(c0,cp))
parameter(c3=sign(c0,cm))
call ssa(a2,ap)
call ssa(a3,am)
call ssb(b2,bp)
call ssb(b3,bm)
call ssc(c2,cp)
call ssc(c3,cm)
contains
subroutine ssa(a2,a1)
implicit real(4)(a)
parameter(a0=1)
if (a2/=sign(a0,a1))print *,101,a2,a1
end subroutine
subroutine ssb(a2,a1)
implicit real(8)(a)
parameter(a0=1)
if (a2/=sign(a0,a1))print *,102,a2,a1
end subroutine
subroutine ssc(a2,a1)
implicit real(16)(a)
parameter(a0=1)
if (a2/=sign(a0,a1))print *,103,a2,a1
end subroutine
end
call s1
print *,'pass'
end
