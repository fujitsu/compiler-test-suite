subroutine s1
implicit complex(c),real(r)
real:: r=2
parameter(r1=1,r2=2)
complex,pointer    ::cc(:)
complex,allocatable::c01(:),c02(:),c03(:),c04(:),c05(:),c06(:),c07(:)
complex,allocatable::c08(:),c09(:),c10(:),c11(:),c12(:),c13(:),c14(:),c15(:)
complex,allocatable::d01(:),d02(:),d03(:),d04(:),d05(:),d06(:),d07(:)
complex,allocatable::d08(:),d09(:),d10(:),d11(:),d12(:),d13(:),d14(:),d15(:)
real   ,allocatable::rr1(:),rr2(:)
real   ,allocatable::rr3(:),rr4(:)
complex,target::ct(-3:-1)/(1,2),(0,0),(1,2)/
allocate(d01(2),c01(2),source=(1,2))
if (any(c01/=(1,2))) print *,101
if (any(ubound(c01)/=2)) print *,102
if (any(d01/=(1,2))) print *,101
if (any(ubound(d01)/=2)) print *,102
allocate(d02(2),c02(2),source=(r1,r2))
if (any(c02/=(1,2))) print *,111
if (any(ubound(c02)/=2)) print *,112
if (any(d02/=(1,2))) print *,111
if (any(ubound(d02)/=2)) print *,112
cc=>ct(::2)
allocate(d03(2),c03(2),source=cc)
if (any(c03/=(1,2))) print *,131
if (any(ubound(c03)/=2)) print *,132
if (any(d03/=(1,2))) print *,131
if (any(ubound(d03)/=2)) print *,132
allocate(d04,c04,source=cc)
if (any(c04/=(1,2))) print *,141
if (any(ubound(c04)/=2)) print *,142
if (any(d04/=(1,2))) print *,141
if (any(ubound(d04)/=2)) print *,142
cc=>ct
allocate(c05,d05,source=cc)
if (any(c05(::2)/=(1,2))) print *,140
if (any(c05(-2:-2)/=0    )) print *,141
if (any(ubound(c05)/=-1)) print *,142
if (any(d05(::2)/=(1,2))) print *,140
if (any(d05(-2:-2)/=0    )) print *,141
if (any(ubound(d05)/=-1)) print *,142
allocate(c06,d06,source=f(cc))
if (any(c06(::2)/=(1,2))) print *,150
if (any(c06(-2:-2)/=0    )) print *,151
if (any(ubound(c06)/=-1)) print *,152
if (any(d06(::2)/=(1,2))) print *,150
if (any(d06(-2:-2)/=0    )) print *,151
if (any(ubound(d06)/=-1)) print *,152
allocate(d07,c07,source=cc(::2))
if (any(c07(:)/=(1,2))) print *,161
if (any(ubound(c07)/=2)) print *,162
if (any(d07(:)/=(1,2))) print *,161
if (any(ubound(d07)/=2)) print *,162
allocate(rr1,rr3,source=cc(::2)%im)
if (any(rr1(:)/=2)) print *,171
if (any(ubound(rr1)/=2)) print *,172
if (any(rr3(:)/=2)) print *,171
if (any(ubound(rr3)/=2)) print *,172
allocate(rr2,rr4,source=cc%im)
if (any(rr2(:)/=[2,0,2])) print *,181
if (any(ubound(rr2)/=3)) print *,182,ubound(rr2)
if (any(rr4(:)/=[2,0,2])) print *,181
if (any(ubound(rr4)/=3)) print *,182,ubound(rr2)
cc=>ct(::2)
allocate(c08,d08,source=cmplx(cc%re,cc%im))
if (any(c08/=(1,2))) print *,191
if (any(ubound(c08)/=2)) print *,192
if (any(d08/=(1,2))) print *,191
if (any(ubound(d08)/=2)) print *,192
allocate(c09(2),d09(2),source=cmplx(cc%re,cc%im))
if (any(c09/=(1,2))) print *,201
if (any(ubound(c09)/=2)) print *,202
if (any(d09/=(1,2))) print *,201
if (any(ubound(d09)/=2)) print *,202
allocate(c10,d10,source=reshape(cc,[2]))
if (any(c10/=(1,2))) print *,211
if (any(ubound(c10)/=2)) print *,212
if (any(d10/=(1,2))) print *,211
if (any(ubound(d10)/=2)) print *,212
allocate(c11,d11,source=[cc(1),cc(2)])
if (any(c11/=(1,2))) print *,221
if (any(ubound(c11)/=2)) print *,222
if (any(d11/=(1,2))) print *,221
if (any(ubound(d11)/=2)) print *,222
allocate(c12,d12,source=fx(cc))
if (any(c12/=(1,2))) print *,230
if (any(ubound(c12)/=2)) print *,232
if (any(d12/=(1,2))) print *,230
if (any(ubound(d12)/=2)) print *,232
allocate(c13,d13,source=cmplx(cc%re,cc%im))
if (any(c13/=(1,2))) print *,241
if (any(ubound(c13)/=2)) print *,242
if (any(d13/=(1,2))) print *,241
if (any(ubound(d13)/=2)) print *,242
allocate(c14,d14,source=cmplx(cc(:)%re,cc(:)%im))
if (any(c14/=(1,2))) print *,251
if (any(ubound(c14)/=2)) print *,252
if (any(d14/=(1,2))) print *,251
if (any(ubound(d14)/=2)) print *,252
allocate(c15(2),d15(2),source=cmplx(cc%re,r))
if (any(c15/=(1,2))) print *,261
if (any(ubound(c15)/=2)) print *,262
if (any(d15/=(1,2))) print *,261
if (any(ubound(d15)/=2)) print *,262
contains
function f(c)
complex,pointer::c(:),f(:)
f=>c
end function
function fx(c)
complex::c(:),fx(size(c))
fx=c
end function
end
call s1
print *,'pass'
end
