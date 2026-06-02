type ty
class(*),allocatable::aa
end type

type(ty),pointer::obj
class(*),pointer::ptr
class(*),pointer::ptr2
allocate(obj)
allocate(obj%aa,source=10)

ptr => obj%aa

select type(asc=>obj%aa)
 type is(integer)
  asc=12
  ptr=>asc
 class default
   print*,"101"
end select
select type(asc=>ptr)
 type is(integer)
 select type(asc=>ptr)
  type is(integer)
    ptr2=>asc
    if(asc.ne.12)print*,"102"
 end select
 class default
   print*,"101"
end select
 select type(asc=>ptr2)
  type is(integer)
    if(asc.ne.12)print*,"103"
 end select
print*,"PASS"
end
