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

class(x0),pointer:: a0(:,:)
class(x1),pointer:: a1(:,:)

allocate( a1(2,2) )
allocate( a0(2,2), mold=a1 )

k=0
select type (a0)
type is(x1)
  k=1
  if (a0(1,1)%x01/=1) print *,101,a0(1,1)%x01
  if (a0(2,1)%x01/=1) print *,103,a0(2,1)%x01
  if (a0(1,2)%x01/=1) print *,105,a0(1,2)%x01
  if (a0(2,2)%x01/=1) print *,107,a0(2,2)%x01
end select
if (k/=1) print *,201
allocate(x2:: a1(3,2) )
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
  if (a0(1,1)%x01/=1) print *,201,a0(1,1)%x01
  if (a0(2,1)%x01/=1) print *,204,a0(2,1)%x01
  if (a0(1,2)%x01/=1) print *,207,a0(1,2)%x01
  if (a0(2,2)%x01/=1) print *,210,a0(2,2)%x01
  if (a0(3,2)%x01/=1) print *,213,a0(3,2)%x01
  if (a0(3,2)%x01/=1) print *,216,a0(3,2)%x01
end select
if (k/=1) print *,401
end
call s1
print *,'pass'
end
