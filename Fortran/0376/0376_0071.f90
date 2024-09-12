module m1
type ww
  integer x1
  integer x2
end type
 type w
    type(ww)::u
 end type
 type(w):: qv,qw
 contains
subroutine s2
 type(w):: rv,rw
qv%u%x2=1
k=qv%u%x2
k=qv%u%x2
if (k/=1)print *,'error'
qw%u%x2=1
k=qw%u%x2
k=qw%u%x2
if (k/=1)print *,'error'
rv%u%x2=1
k=rv%u%x2
k=rv%u%x2
if (k/=1)print *,'error'
rw%u%x2=1
k=rw%u%x2
k=rw%u%x2
if (k/=1)print *,'error'
end subroutine
end
subroutine s1
type xx
  integer x1
  integer x2
end type
type x
 type(xx)::u
end type
 type(x):: yv,yw
call ss1
call ss2
 contains
subroutine ss1
 type(x):: xv,xw
xv%u%x2=1
k=xv%u%x2
k=xv%u%x2
if (k/=1)print *,'error'
xw%u%x2=1
k=xw%u%x2
k=xw%u%x2
if (k/=1)print *,'error'

yv%u%x2=1
k=yv%u%x2
k=yv%u%x2
if (k/=1)print *,'error'
yw%u%x2=1
k=yw%u%x2
k=yw%u%x2
if (k/=1)print *,'error'
end subroutine
subroutine ss2
 type(x):: xv,xw
xv%u%x2=1
k=xv%u%x2
k=xv%u%x2
if (k/=1)print *,'error'
xw%u%x2=1
k=xw%u%x2
if (k/=1)print *,'error'

yv%u%x2=1
k=yv%u%x2
k=yv%u%x2
if (k/=1)print *,'error'
yw%u%x2=1
k=yw%u%x2
k=yw%u%x2
if (k/=1)print *,'error'
end subroutine
end
use m1
call s2
call s1
print *,'pass'
end

