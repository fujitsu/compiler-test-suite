call s1
call s2
print *,'pass'
end
subroutine s1
real(4),target::ptr(5)
real(8),target::ptd(5)
real(16),target::ptq(5)
real(4),pointer::pr(:)
real(8),pointer::pd(:)
real(16),pointer::pq(:)
allocate(pr(5),pd(5),pq(5))
ptr=[0.76159416,1.1752012,1.5430806,3.0,4.0]
ptd=[0.76159416_8,1.1752012_8,1.5430806_8,3.0_8,4.0_8]
ptq=[0.76159416_16,1.1752012_16,1.5430806_16,3.0_16,4.0_16]
pr=>ptr
pd=>ptd
pq=>ptq
call s11(atanh(pr(1)),atanh(ptr(1)))
call s11(asinh(pr(2)),asinh(ptr(2)))
call s11(acosh(pr(3)),acosh(ptr(3)))
call s11(hypot(pr(4),pr(5)),hypot(ptr(4),ptr(5)))
call s12(atanh(pd(1)),atanh(ptd(1)))
call s12(asinh(pd(2)),asinh(ptd(2)))
call s12(acosh(pd(3)),acosh(ptd(3)))
call s12(hypot(pd(4),pd(5)),hypot(ptd(4),ptd(5)))
call s13(atanh(pq(1)),atanh(ptq(1)))
call s13(asinh(pq(2)),asinh(ptq(2)))
call s13(acosh(pq(3)),acosh(ptq(3)))
call s13(hypot(pq(4),pq(5)),hypot(ptq(4),ptq(5)))
contains
subroutine s11(x,y)
real(4)::x,y
if(x/=y) print *,'err1'
end subroutine
subroutine s12(x,y)
real(8)::x,y
if(x/=y) print *,'err2'
end subroutine
subroutine s13(x,y)
real(16)::x,y
if(x/=y) print *,'err3'
end subroutine
end
subroutine s2
complex(4),target::ptc(10)
complex(8),target::ptcd(10)
complex(16),target::ptcq(10)
complex(4),pointer::pc(:)
complex(8),pointer::pcd(:)
complex(16),pointer::pcq(:)
allocate(pc(10),pcd(10),pcq(10))
ptc=[(0.76159416,0.0),(1.1752012,0.0),(1.5430806,0.0),(1.5574077,0.0),&
(1.0,0.0),(1.0,0.0),(1.0,0.0),(0.84147098,0.0),(0.54030231,0.0),(1.0,0.0)]
ptcd=[(0.76159416_8,0.0_8),(1.1752012_8,0.0_8),(1.5430806_8,0.0_8),&
(1.5574077_8,0.0_8),(1.0_8,0.0_8),(1.0_8,0.0_8),(1.0_8,0.0_8),&
(0.84147098_8,0.0_8),(0.54030231_8,0.0_8),(1.0_8,0.0_8)]
ptcq=[(0.76159416_16,0.0_16),(1.1752012_16,0.0_8),(1.5430806_16,0.0_16),&
(1.5574077_16,0.0_16),(1.0_16,0.0_16),(1.0_16,0.0_16),(1.0_16,0.0_16),&
(0.84147098_16,0.0_16),(0.54030231_16,0.0_16),(1.0_16,0.0_16)]
pc=>ptc
pcd=>ptcd
pcq=>ptcq
call s21(atanh(pc(1)),atanh(ptc(1)))
call s21(asinh(pc(2)),asinh(ptc(2)))
call s21(acosh(pc(3)),acosh(ptc(3)))
call s21(atan(pc(4)),atan(ptc(4)))
call s21(sinh(pc(5)),sinh(ptc(5)))
call s21(cosh(pc(6)),cosh(ptc(6)))
call s21(tanh(pc(6)),tanh(ptc(6)))
call s21(asin(pc(6)),asin(ptc(6)))
call s21(acos(pc(6)),acos(ptc(6)))
call s21(tan(pc(6)),tan(ptc(6)))
contains
subroutine s21(x,y)
complex(4)::x,y
if(x/=y) print *,'err1'
end subroutine
subroutine s22(x,y)
complex(8)::x,y
if(x/=y) print *,'err2'
end subroutine
subroutine s23(x,y)
complex(16)::x,y
if(x/=y) print *,'err3'
end subroutine
end
