subroutine s1
real v,x,e
real vv,xx,ee
x=1.234567
v=2.345678
e=3.456789
xx=1.234567
vv=2.345678
ee=3.456789
!$omp atomic capture
v=x
x=x+e
!$omp end atomic
vv=xx
xx=xx+ee
if (x/=xx) print *,104,x,xx
if (e/=ee) print *,105,e,ee
if (v/=vv) print *,106,v,vv
end subroutine
subroutine s2( v,x,e,vv,xx,ee)
real v,x,e
real vv,xx,ee
x=1.234567
v=2.345678
e=3.456789
xx=1.234567
vv=2.345678
ee=3.456789
!$omp atomic capture
v=x
x=x+e
!$omp end atomic
vv=xx
xx=xx+ee
if (x/=xx) print *,104,x,xx
if (e/=ee) print *,105,e,ee
if (v/=vv) print *,106,v,vv
end subroutine
real v,x,e
real vv,xx,ee
call s1
call       s2( v,x,e,vv,xx,ee)
print *,'pass'
end
