subroutine s1(y1,k)
character(*) y1
character(k+1) z
z=                       y1//y1
call c1((/z/))
end
subroutine c1(z)
character(*)::z(1)
if (len(z)/=4)print *,201
if (z(1)/='11  ')print *,203
end
character x1*1
x1='1'
call s1(x1,3)
print *,'pass'
end
