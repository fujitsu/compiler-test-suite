subroutine s1
type x
end type
type(x),parameter::y=x()
type(x)::y1
y1=x()
write(1,*) y1
write(1,*) y
end
subroutine s2
type x
end type
type(x),parameter::y2(3)=(/x(),x(),x()/)
write(1,*) y2
end
call s1
call s2
print *,'pass'
end
