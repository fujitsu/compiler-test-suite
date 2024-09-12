call s1
call s2
print *,'pass'
end
subroutine s1
real(4)::r(1:0)
real(8)::d(1:0)
real(16)::q(1:0)
r=1;d=1;q=1
call s11(r)
call s12(d)
call s13(q)
contains
subroutine s11(r)
real(4)::r(:)
if(any(acosh(r)/=[real(4)::])) print *,'err'
if(any(asinh(r)/=[real(4)::])) print *,'err'
if(any(atanh(r)/=[real(4)::])) print *,'err'
if(any(hypot(r,r)/=[real(4)::])) print *,'err'
end subroutine
subroutine s12(r)
real(8)::r(:)
if(any(acosh(r)/=[real(8)::])) print *,'err'
if(any(asinh(r)/=[real(8)::])) print *,'err'
if(any(atanh(r)/=[real(8)::])) print *,'err'
if(any(hypot(r,r)/=[real(8)::])) print *,'err'
end subroutine
subroutine s13(r)
real(16)::r(:)
if(any(acosh(r)/=[real(16)::])) print *,'err'
if(any(asinh(r)/=[real(16)::])) print *,'err'
if(any(atanh(r)/=[real(16)::])) print *,'err'
if(any(hypot(r,r)/=[real(16)::])) print *,'err'
end subroutine
end
subroutine s2
complex(4)::r(1:0)
complex(8)::d(1:0)
complex(16)::q(1:0)
r=1;d=1;q=1
call s21(r)
call s22(d)
call s23(q)
contains
subroutine s21(r)
complex(4)::r(:)
if(any(acosh(r)/=[complex(4)::])) print *,'err'
if(any(asinh(r)/=[complex(4)::])) print *,'err'
if(any(atanh(r)/=[complex(4)::])) print *,'err'
if(any(atan(r)/=[complex(4)::])) print *,'err'
if(any(sinh(r)/=[complex(4)::])) print *,'err'
if(any(cosh(r)/=[complex(4)::])) print *,'err'
if(any(tanh(r)/=[complex(4)::])) print *,'err'
if(any(asin(r)/=[complex(4)::])) print *,'err'
if(any(acos(r)/=[complex(4)::])) print *,'err'
if(any(tan(r)/=[complex(4)::])) print *,'err'
end subroutine
subroutine s22(r)
complex(8)::r(:)
if(any(acosh(r)/=[complex(8)::])) print *,'err'
if(any(asinh(r)/=[complex(8)::])) print *,'err'
if(any(atanh(r)/=[complex(8)::])) print *,'err'
if(any(atan(r)/=[complex(8)::])) print *,'err'
if(any(sinh(r)/=[complex(8)::])) print *,'err'
if(any(cosh(r)/=[complex(8)::])) print *,'err'
if(any(tanh(r)/=[complex(8)::])) print *,'err'
if(any(asin(r)/=[complex(8)::])) print *,'err'
if(any(acos(r)/=[complex(8)::])) print *,'err'
if(any(tan(r)/=[complex(8)::])) print *,'err'
end subroutine
subroutine s23(r)
complex(16)::r(:)
if(any(acosh(r)/=[complex(16)::])) print *,'err'
if(any(asinh(r)/=[complex(16)::])) print *,'err'
if(any(atanh(r)/=[complex(16)::])) print *,'err'
if(any(atan(r)/=[complex(16)::])) print *,'err'
if(any(sinh(r)/=[complex(16)::])) print *,'err'
if(any(cosh(r)/=[complex(16)::])) print *,'err'
if(any(tanh(r)/=[complex(16)::])) print *,'err'
if(any(asin(r)/=[complex(16)::])) print *,'err'
if(any(acos(r)/=[complex(16)::])) print *,'err'
if(any(tan(r)/=[complex(16)::])) print *,'err'
end subroutine
end
