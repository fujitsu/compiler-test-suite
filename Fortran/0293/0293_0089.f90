subroutine s1(a,b,n)
integer a(*)
type x
  sequence
  integer x1
end type
type(x)::b(*)
a(n)=1
b(n)%x1=1
end
integer a(5)
type x
  sequence
  integer x1
end type
type(x)::b(5)
call s1(a(2),b(2),1)
print *,'pass'
end

