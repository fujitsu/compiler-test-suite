subroutine s2
type x
end type
type(x),parameter::y2(2)=(/x(),x()/)
write(2,*) y2
end
call s2
print *,'pass'
end
