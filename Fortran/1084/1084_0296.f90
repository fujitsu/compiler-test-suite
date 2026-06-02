type ty
class(*),allocatable::aa
end type
type ty2
   type(ty)::obj
end type
type(ty2),volatile,target:: obj3
class(*),pointer,volatile::ptr
allocate(obj3%obj%aa,source=10)

ptr => obj3%obj%aa

select type(asc=>obj3%obj%aa)
 type is(integer)
  asc=12
  ptr=>asc
 class default
   print*,"101"
end select
select type(asc=>ptr)
 type is(integer)
  if(asc.ne.12)print*,"102"
 class default
   print*,"101"
end select
print*,"PASS"
end
