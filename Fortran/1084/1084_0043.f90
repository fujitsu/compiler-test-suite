type t1
  class(*),pointer::ptr
  integer::k=2
end type

type ty
class(t1),allocatable::aa(:)
end type
type ty2
class(t1),pointer::ptr
end type

type(ty),pointer::obj
class(*),pointer::ptr
allocate(obj)
allocate(obj%aa(5))
ptr => obj%aa(1)

select type(asc=>obj%aa)
 type is(t1)
  allocate(asc(1)%ptr,source=10)
  ptr=>asc(1)%ptr
  call sub(asc(1)%ptr)
 class default
   print*,"101"
end select
select type(asc=>ptr)
 class default
   print*,"101"
type is (integer)
   if(asc.ne.10) print*,"103"
end select
print*,"PASS"
contains
subroutine sub(x)
class(*)::x
select type(asc=>x)
type is (integer)
   if(asc.ne.10) print*,"103"
end select
end
end
