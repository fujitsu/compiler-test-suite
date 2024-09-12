subroutine s1
character,dimension(2):: x1*1,x2*2,x3*10000
x1='123'
x2='123'
x3='123'
call c1([character(3)::x1//x1])
call c2([character(3)::x2//x3])
contains
subroutine c1(z)
character(*)::z(:)
if (len(z)/=3)print *,42101
if (any(shape(z)/=(/2/)))print *,42102
if (z(1)/='11 ')print *,42031
if (z(2)/='11 ')print *,42032
end subroutine
subroutine c2(z)
character(*)::z(:)
if (len(z)/=3)print *,42101
if (any(shape(z)/=(/2/)))print *,42102
if (z(1)/='121')print *,42031
if (z(2)/='121')print *,42032
end subroutine
end
call s1
print *,'pass'
end
