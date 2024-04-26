subroutine s1
type a
  integer::x1=1
  integer::x2=2
  integer::x3=3
end type
type(a),parameter::v=a(1,2,3)
write(1,*) v
end
call s1
print *,'pass'
end
