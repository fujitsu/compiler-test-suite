module m1
  integer(4),allocatable,dimension(:)::pp1,pp4
contains
  function f2() result(p)
   integer(4),allocatable,dimension(:)::p
   allocate(p(3))
   p=2
  end function
end
program aaa
use m1
 interface
  function f() result(pp)
   integer(4),allocatable,dimension(:)::pp
  end function
 end interface
  integer(4),allocatable,dimension(:)::pp,pp2,pp3
type x
  integer(4),allocatable,dimension(:)::pp,pp2,pp3
end type
type(x)::v
do i=1,5
  if (any(f()/=1))write(6,*) "NG"
end do
do i=1,5
  if (any(f2()/=2))write(6,*) "NG"
end do
allocate (pp(3),pp2(3))
do i=1,5
  pp=f()
  if (any(pp/=1))write(6,*) "NG"
end do
do i=1,5
  pp2=f2()
  if (any(pp2/=2))write(6,*) "NG"
end do
do i=1,5
  v=x(f2(),null(),null())
  if (any(v%pp/=2))write(6,*) "NG"
  v%pp=f()
  if (any(v%pp/=1))write(6,*) "NG"
end do
do i=1,5
  v=x(null(),f(),null())
  if (any(v%pp2/=1))write(6,*) "NG"
  v%pp2=f2()
  if (any(pp2/=2))write(6,*) "NG"
end do
print *,'pass'
end
  function f() result(p)
   integer(4),allocatable,dimension(:)::p
   allocate(p(3))
   p=1
  end function
