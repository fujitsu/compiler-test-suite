type ty1
 integer::ii1=5
end type

type,extends(ty1)::ty2
 integer::ii2=10
end type

class(ty1),allocatable::obj1(:)
class(ty1),allocatable::obj2(:)

allocate(ty2::obj1(5))
allocate(ty2::obj2(9))
select type(AA=>obj1)
type is(ty2)
 select type(AA=>obj1)
 type is(ty2)
  call sub2(AA)
  obj1 = obj2
  call sub1(obj1)
end select
end select
print*,"PASS"

contains
subroutine sub1(d1)
class(ty1)::d1(..)
if(rank(d1).ne.1)print*,"101"
if(any(lbound(d1).ne.1))print*,"102"
if(any(ubound(d1).ne.9))print*,"103"
end
subroutine sub2(d1)
class(ty1)::d1(..)
if(rank(d1).ne.1)print*,"112"
if(any(lbound(d1).ne.1))print*,"122"
if(any(ubound(d1).ne.5))print*,"133"
end
end
