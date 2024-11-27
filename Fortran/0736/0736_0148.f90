module m1
  type x
    integer,allocatable::a(:)
  end type
end
integer::a(3)
a=(/2,3,4/)
call sub(a)
print *,'pass'
contains
subroutine sub(a)
 use m1
  type(x)::v(3)
  integer::a(:)
  v=x(a-1)
  if (any(v(1)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(v(2)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(v(3)%a/=(/1,2,3/)))write(6,*) "NG"
end subroutine
end
