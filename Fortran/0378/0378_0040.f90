subroutine s1(y1)
character(*) y1
k=4
call c1([character(k)::y1])
end
subroutine c1(z)
character(*)::z(1)
if (len(z)/=4)print *,201
if (z(1)/='1   ')print *,203
end subroutine
character x1*1
x1='1'
call s1(x1)
print *,'pass'
end
