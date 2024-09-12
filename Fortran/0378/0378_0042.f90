subroutine s1
character,dimension(2):: x1*1,x2*2,x3*3
x1='123'
x2='123'
x3='123'
call c1([character(2)::x1,x2,x3],1,2,6)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (1)
if (len(z)/=k)print *,101
if (any(shape(z)/=(/n/)))print *,102
if (z(1)/='1 ')print *,1031
if (z(2)/='1 ')print *,1032
if (z(3)/='12')print *,1041
if (z(4)/='12')print *,1042
if (z(5)/='12')print *,1051
if (z(6)/='12')print *,1052
case (2)
if (len(z)/=k)print *,201
if (any(shape(z)/=(/n/)))print *,202
if (z(1)/='11  ')print *,203
if (z(2)/='1212')print *,204
if (z(3)/='1231')print *,205
end select
end subroutine
end
call s1
print *,'pass'
end
