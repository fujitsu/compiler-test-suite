subroutine s2
type x
end type
type(x),parameter::y2(1)=(/x()/)
write(4,*) y2
end
call s2
print *,'pass'
end
