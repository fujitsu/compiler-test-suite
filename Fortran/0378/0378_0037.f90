subroutine s1
character*3 x1*1,x2*2,x3*3
x1='123'
x2='123'
x3='123'
call c1([character(2)::x1//x1,x2//x2,x3//x3],1,2,3)
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
end select
end subroutine
end
call s1
print *,'pass'
end
