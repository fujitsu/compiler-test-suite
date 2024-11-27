module m1
  type x
    integer,allocatable::x(:)
  end type
  type y
    integer,pointer::x(:)
  end type
end
call sub
print *,'pass'
contains
subroutine sub
 use m1
  type(x)::v(3)
  type(y)::vv(3)
  integer,target::a(3)=(/1,2,3/)

  vv=y(a)
  if (any(vv(1)%x/=(/1,2,3/)))write(6,*) "NG"
  if (any(vv(2)%x/=(/1,2,3/)))write(6,*) "NG"
  if (any(vv(3)%x/=(/1,2,3/)))write(6,*) "NG"
  v=x(a-1)
  if (any(v(1)%x/=(/0,1,2/)))write(6,*) "NG"
  if (any(v(2)%x/=(/0,1,2/)))write(6,*) "NG"
  if (any(v(3)%x/=(/0,1,2/)))write(6,*) "NG"
end subroutine
end
