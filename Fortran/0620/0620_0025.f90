subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)

parameter (a1=3.0,b1=3.0,c1=3.0)
parameter (d1=(3.0,3.0),e1=(3.0,3.0),f1=(3.0,3.0))
parameter (n=15)

parameter (a11=a1**n)
parameter (b11=b1**n)
parameter (c11=c1**n)
parameter (d11=d1**n)
parameter (e11=e1**n)
parameter (f11=f1**n)

nn=15
call sa(a11,a1**n,a1**nn,a1,n)
call sb(b11,b1**n,b1**nn,b1,n)
call sc(c11,c1**n,c1**nn,c1,n)
call sd(d11,d1**n,d1**nn,d1,n)
call se(e11,e1**n,e1**nn,e1,n)
call sf(f11,f1**n,f1**nn,f1,n)
contains
subroutine sa(a1,a2,a3,a4,n)
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
if (a1/=a2)print *,101,a1,a2
if (a1/=a3)print *,102,a1,a3
if (a1/=a4**n)print *,103,a1,a4**n
end subroutine
subroutine sb(a1,a2,a3,a4,n)
implicit real(4)(x),real(8)(a),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
if (a1/=a2)print *,111,a1,a2
if (a1/=a3)print *,112,a1,a3
if (a1/=a4**n)print *,113,a1,a4**n
end subroutine
subroutine sc(a1,a2,a3,a4,n)
implicit real(4)(x),real(8)(y),real(16)(a)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
if (a1/=a2)print *,121,a1,a2
if (a1/=a3)print *,122,a1,a3
if (a1/=a4**n)print *,123,a1,a4**n
end subroutine
subroutine sd(a1,a2,a3,a4,n)
implicit real(4)(x),real(8)(y),real(16)(z)
implicit complex(4)(a),complex(8)(e),complex(16)(f)
if (a1/=a2)print *,131,a1,a2
if (a1/=a3)print *,132,a1,a3
if (a1/=a4**n)print *,133,a1,a4**n
end subroutine
subroutine se(a1,a2,a3,a4,n)
implicit real(4)(x),real(8)(y),real(16)(z)
implicit complex(4)(q),complex(8)(a),complex(16)(f)
if (a1/=a2)print *,141,a1,a2
if (a1/=a3)print *,142,a1,a3
if (a1/=a4**n)print *,143,a1,a4**n
end subroutine
subroutine sf(a1,a2,a3,a4,n)
implicit real(4)(x),real(8)(y),real(16)(z)
implicit complex(4)(w),complex(8)(q),complex(16)(a)
if (a1/=a2)print *,151,a1,a2
if (a1/=a3)print *,152,a1,a3
if (a1/=a4**n)print *,153,a1,a4**n
end subroutine
end
call s1
print *,'pass'
end
