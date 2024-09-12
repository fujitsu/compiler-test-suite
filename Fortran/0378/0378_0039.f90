subroutine s1(y1,y2,y3)
character(*) y1,y2,y3
k=3
call c1([character(k+1)::y1//y1],2,4,1)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (1)
if (len(z)/=k)print *,101
if (any(shape(z)/=(/n/)))print *,102
if (z(1)/='11')print *,103
if (z(2)/='12')print *,104
if (z(3)/='12')print *,105
case (2)
if (len(z)/=k)print *,201
if (any(shape(z)/=(/n/)))print *,202
if (z(1)/='11  ')print *,203
end select
end subroutine
end
character*3 x1*1,x2*2,x3*3
x1='123'
x2='123'
x3='123'
call s1(x1,x2,x3)
print *,'pass'
end
