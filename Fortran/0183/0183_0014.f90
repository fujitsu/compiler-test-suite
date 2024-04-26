subroutine s1
implicit complex(c),real(r)
real:: r=2
parameter(r1=1,r2=2)
complex,pointer    ::cc(:)
class(*),allocatable::c01(:),c02(:),c03(:),c04(:),c05(:),c06(:),c07(:)
class(*),allocatable::c08(:),c09(:),c10(:),c11(:),c12(:),c13(:),c14(:),c15(:)
class(*)   ,allocatable::rr1(:),rr2(:)
complex,target::ct(-3:-1)/(1,2),(0,0),(1,2)/
allocate(c01(2),source=(1,2))
k=0
select type(c01)
type is(complex)
 k=1
if (any(c01/=(1,2))) print *,101
end select
if (k/=1) print *,10001
if (any(ubound(c01)/=2)) print *,102
allocate(c02(2),source=(r1,r2))
k=0
select type(c02)
type is(complex)
 k=1
if (any(c02/=(1,2))) print *,111
end select
if (k/=1) print *,10002
if (any(ubound(c02)/=2)) print *,112
cc=>ct(::2)
allocate(c03(2),source=cc)
k=0
select type(c03)
type is(complex)
 k=1
if (any(c03/=(1,2))) print *,131
end select
if (k/=1) print *,10003
if (any(ubound(c03)/=2)) print *,132
allocate(c04,source=cc)
k=0
select type(c04)
type is(complex)
 k=1
if (any(c04/=(1,2))) print *,141
end select
if (k/=1) print *,10004
if (any(ubound(c04)/=2)) print *,142
cc=>ct
allocate(c05,source=cc)
k=0
select type(c05)
type is(complex)
 k=1
if (any(c05(::2)/=(1,2))) print *,140
if (any(c05(-2:-2)/=0    )) print *,141
end select
if (k/=1) print *,10005
if (any(ubound(c05)/=-1)) print *,142
allocate(c06,source=f(cc))
k=0
select type(c06)
type is(complex)
 k=1
if (any(c06(::2)/=(1,2))) print *,150
if (any(c06(-2:-2)/=0    )) print *,151
end select
if (k/=1) print *,10006
if (any(ubound(c06)/=-1)) print *,152
allocate(c07,source=cc(::2))
k=0
select type(c07)
type is(complex)
 k=1
if (any(c07(:)/=(1,2))) print *,161
end select
if (k/=1) print *,10007
if (any(ubound(c07)/=2)) print *,162
allocate(rr1,source=cc(::2)%im)
k=0
select type(rr1)
type is(real   )
 k=1
if (any(rr1(:)/=2)) print *,171
end select
if (k/=1) print *,11008
if (any(ubound(rr1)/=2)) print *,172
allocate(rr2,source=cc%im)
k=0
select type(rr2)
type is(real   )
 k=1
if (any(rr2(:)/=[2,0,2])) print *,181
end select
if (k/=1) print *,11008
if (any(ubound(rr2)/=3)) print *,182,ubound(rr2)
cc=>ct(::2)
allocate(c08,source=cmplx(cc%re,cc%im))
k=0
select type(c08)
type is(complex)
 k=1
if (any(c08/=(1,2))) print *,191
end select
if (k/=1) print *,11008
if (any(ubound(c08)/=2)) print *,192
allocate(c09(2),source=cmplx(cc%re,cc%im))
k=0
select type(c09)
type is(complex)
 k=1
if (any(c09/=(1,2))) print *,201
end select
if (k/=1) print *,11009
if (any(ubound(c09)/=2)) print *,202
allocate(c10,source=reshape(cc,[2]))
k=0
select type(c10)
type is(complex)
 k=1
if (any(c10/=(1,2))) print *,211
end select
if (k/=1) print *,11010
if (any(ubound(c10)/=2)) print *,212
allocate(c11,source=[cc(1),cc(2)])
k=0
select type(c11)
type is(complex)
 k=1
if (any(c11/=(1,2))) print *,221
end select
if (k/=1) print *,11011
if (any(ubound(c11)/=2)) print *,222
allocate(c12,source=fx(cc))
k=0
select type(c12)
type is(complex)
 k=1
if (any(c12/=(1,2))) print *,230
end select
if (k/=1) print *,11012
if (any(ubound(c12)/=2)) print *,232
allocate(c13,source=cmplx(cc%re,cc%im))
k=0
select type(c13)
type is(complex)
 k=1
if (any(c13/=(1,2))) print *,241
end select
if (k/=1) print *,11013
if (any(ubound(c13)/=2)) print *,242
allocate(c14,source=cmplx(cc(:)%re,cc(:)%im))
k=0
select type(c14)
type is(complex)
 k=1
if (any(c14/=(1,2))) print *,251
end select
if (k/=1) print *,11014
if (any(ubound(c14)/=2)) print *,252
allocate(c15(2),source=cmplx(cc%re,r))
k=0
select type(c15)
type is(complex)
 k=1
if (any(c15/=(1,2))) print *,261
end select
if (k/=1) print *,11015
if (any(ubound(c15)/=2)) print *,262
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
