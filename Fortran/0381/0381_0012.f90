subroutine s2
type x
end type
type(x),parameter::y2(2)=(/x(),x()/)
if (size((/x(),x()/))/=2)print *,101,size((/x(),x()/))
write(3,*) y2
end
call s2
print *,'pass'
end
