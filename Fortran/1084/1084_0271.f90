type ty
class(*),allocatable::aa
end type
type ty2
class(*),pointer::ptr
end type

type(ty),pointer::obj
class(*),pointer::ptr
type(ty2)::obj4
allocate(obj)
allocate(obj%aa,source=10)

ptr => obj%aa

select type(asc=>obj%aa)
 type is(integer)
  asc=12
  ptr=>asc
  obj4 = ty2(asc)
 class default
   print*,"101"
end select
select type(asc=>ptr)
 class default
   print*,"101"
type is (integer)
   if(asc.ne.12) print*,"103"
end select
select type(asc=>obj4%ptr)
 class default
   print*,"101"
type is (integer)
   if(asc.ne.12) print*,"105"
end select
print*,"PASS"
end
