subroutine s1
character*3 x1*1,x2*2,x3*3
x1='123'
x2='123'
x3='123'
call c1([character(2)::x1,(x1,x2,x3,n=1,2),x2,x3],2,2,9)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (2)
if (len(z)/=k)print *,201
if (any(shape(z)/=(/n/)))print *,202
if (z(1)/='1 ')print *,203
if (z(2)/='1 ')print *,204
if (z(3)/='12')print *,205
if (z(4)/='12')print *,206
if (z(5)/='1 ')print *,207
if (z(6)/='12')print *,208
if (z(7)/='12')print *,209
if (z(8)/='12')print *,210
if (z(9)/='12')print *,211
end select
end subroutine
end
call s1
print *,'pass'
end