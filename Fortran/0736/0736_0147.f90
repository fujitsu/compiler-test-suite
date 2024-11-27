module m1
  type x
    integer,allocatable::a(:)
  end type
contains
 subroutine chk1(z)
  type(x)::z(:)
  do i=1,size(z)
  if (any(z(i)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%a)/=(/-5/)))write(6,*) "NG"
  end do
 end subroutine
 subroutine chk2(z)
  type(x)::z(:)
  do i=1,size(z)
  if (any(z(i)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z(i)%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z(i)%a)/=(/1/)))write(6,*) "NG"
  end do
 end subroutine
 subroutine chk1s(z)
  type(x)::z
  if (any(z%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%a)/=(/-5/)))write(6,*) "NG"
 end subroutine
 subroutine chk2s(z)
  type(x)::z
  if (any(z%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(z%a)/=(/3/)))write(6,*) "NG"
  if (any(lbound(z%a)/=(/1/)))write(6,*) "NG"
 end subroutine
end
integer::a(3)
a=(/1,2,3/)
do ii=1,5
call sub(a)
end do
print *,'pass'
contains
subroutine sub(a)
 use m1
  type(x)::v(3)
  integer::a(:)
  v=x(a)
  call chk2(v)
  call chk2s(x(a))
  v=x(a*2-a)
  call chk2(v)
  call chk2s(x(a*2-a))
end subroutine
end
