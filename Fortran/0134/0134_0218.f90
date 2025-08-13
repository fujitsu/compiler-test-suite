subroutine s2
integer,parameter::a(0)=0
type x
  integer::a(0)
end type
type(x),parameter::y2(2)=(/x(a),x(a)/)
write(74,*) y2
end
call s2
write(74,*) 999
rewind 74
read(74,*) i;if (i/=999)print *,101,i
print *,'pass'
end
