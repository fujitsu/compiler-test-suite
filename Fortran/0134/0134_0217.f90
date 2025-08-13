subroutine s1
type x
end type
type(x),parameter::y=x()
type(x)::y1
y1=x()
write(73,*) y1
write(73,*) y
end
call s1
print *,'pass'
end
