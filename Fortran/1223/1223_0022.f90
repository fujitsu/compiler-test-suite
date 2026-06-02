subroutine s1
type b
  integer::b01  
end type
type x0
  integer::x01=1
end type
type,extends(x0)::x1
  integer::x11=11
  integer::x13=13
end type
type,extends(x1)::x2
  integer::x21=21
end type

  class(b),allocatable::g  
class(x0),pointer:: a0(:)
class(x1),pointer:: a1(:)

allocate(x2:: a1(2) )
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
  if (a0(1)%x01/=1) print *,201,a0(1)%x01
  if (a0(2)%x01/=1) print *,202,a0(2)%x01
  if (a0(1)%x11/=11) print *,301,a0(1)%x11
  if (a0(2)%x11/=11) print *,302,a0(2)%x11
  if (a0(1)%x13/=13) print *,303,a0(2)%x13
  if (a0(2)%x13/=13) print *,304,a0(2)%x13
  if (a0(1)%x21/=21) print *,401,a0(1)%x21
  if (a0(2)%x21/=21) print *,402,a0(2)%x21
end select
if (k/=1) print *,401
!
end
call ss
call s1
print *,'sngg116t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
