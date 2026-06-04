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

class(x0),pointer:: b0(:)
class(x1),pointer:: b1(:)
class(x0),pointer:: b2(:)
class(* ),pointer:: b3(:)
class(x0),pointer:: b4(:)
class(x1),pointer:: a1(:)

allocate(x2:: a1(2) )
allocate( b0,b1,b2,b3,b4, mold=a1 )

k=0
select type (p=>b0)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,201,p(1)%x01
  if (p(2)%x01/=1) print *,202,p(2)%x01
end select
if (k/=1) print *,401
k=0
select type (p=>b1)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,211,p(1)%x01
  !if (p(2)%x01/=1) print *,212,p(2)%x01
!print *,p(1)%x01
!print *,p(1)%x11
!print *,p(1)%x21
!print *,p(2)%x01
!print *,p(2)%x11
!print *,p(2)%x21
end select
if (k/=1) print *,401
k=0
select type (p=>b2)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,221,p(1)%x01
  if (p(2)%x01/=1) print *,222,p(2)%x01
end select
if (k/=1) print *,4017
k=0
select type (p=>b3)
type is(x2)
  k=1
  !if (p(1)%x01/=1) print *,231,p(1)%x01
  !if (p(2)%x01/=1) print *,232,p(2)%x01
end select
if (k/=1) print *,401
k=0
select type (p=>b4)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,241,p(1)%x01
  if (p(2)%x01/=1) print *,242,p(2)%x01
end select
if (k/=1) print *,401

end
call s1
print *,'sngg113t : pass'
end
