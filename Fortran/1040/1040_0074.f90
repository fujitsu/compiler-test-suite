complex ::a=(1,2),b(2)=(/(3,4),(5,6)/)
call s(a,(1,2))
call s(a+1,(2,2))
call t(b,(3,4))
call t(b+1,(4,4))
call s(b(1)+1,(4,4))
print *,'pass'
contains
subroutine t(c,d)
complex c(:),d
if (abs(c(1)-d)>0.001)write(6,*) "NG"
if (abs(c(2)-d-(2,2))>0.001)write(6,*) "NG"
end subroutine
end
subroutine s(c,d)
complex c,d
if (abs(c-d)>0.001)write(6,*) "NG"
end
