subroutine s1
type x0
  integer::x01=1
end type
type,extends(x0)::x1
  integer::x11=11
end type
type,extends(x1)::x2
  integer::x21=21
end type

class(x0),pointer:: a0(:)
class(x2),pointer:: a1(:)

allocate(x2:: a1(2) )
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
  if (a0(1)%x01/=1) print *,201,a0(1)%x01
  if (a0(2)%x01/=1) print *,204,a0(2)%x01
end select
if (k/=1) print *,401
!
end
call s1
print *,'sngg100t : pass'
end
