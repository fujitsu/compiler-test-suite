module m1
type w
  integer x1
  integer x2
end type
 type(w):: qv,qw
 contains
subroutine s2
 type(w):: rv,rw
qv%x2=1
k=qv%x2
k=qv%x2
if (k/=1)print *,'error'
qw%x2=1
k=qw%x2
k=qw%x2
if (k/=1)print *,'error'
rv%x2=1
k=rv%x2
k=rv%x2
if (k/=1)print *,'error'
rw%x2=1
k=rw%x2
k=rw%x2
if (k/=1)print *,'error'
end subroutine
end
subroutine s1
type x
  integer x1
  integer x2
end type
 type(x):: yv,yw
call ss1
call ss2
 contains
subroutine ss1
 type(x):: xv,xw
xv%x2=1
k=xv%x2
k=xv%x2
if (k/=1)print *,'error'
xw%x2=1
k=xw%x2
k=xw%x2
if (k/=1)print *,'error'

yv%x2=1
k=yv%x2
k=yv%x2
if (k/=1)print *,'error'
yw%x2=1
k=yw%x2
k=yw%x2
if (k/=1)print *,'error'
end subroutine
subroutine ss2
 type(x):: xv,xw
xv%x2=1
k=xv%x2
k=xv%x2
if (k/=1)print *,'error'
xw%x2=1
k=xw%x2
k=xw%x2
if (k/=1)print *,'error'

yv%x2=1
k=yv%x2
k=yv%x2
if (k/=1)print *,'error'
yw%x2=1
k=yw%x2
k=yw%x2
if (k/=1)print *,'error'
end subroutine
end
use m1
call s2
call s1
print *,'pass'
end

