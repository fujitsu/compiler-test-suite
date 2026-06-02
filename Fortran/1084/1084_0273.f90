type t1
 integer::x=23
end type
type t2
 integer,pointer::ptr
end type
type ty
class(t1),allocatable::aa
end type
type ty2
class(*),pointer::ptr
end type
type(t2)::obj6
type(ty),pointer::obj
allocate(obj)
allocate(obj%aa)
select type(asc=>obj%aa)
type is(t1)
  obj6 = t2(asc%x)
class default
   print*,"101"
end select
if(obj6%ptr.ne.23)print*,"101"
print*,"PASS"
end

