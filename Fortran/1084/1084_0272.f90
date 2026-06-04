type t1
  integer::x=12
end type
type ty
class(*),allocatable::aa(:)
class(*),allocatable::bb
end type
type ty2
class(*),pointer::ptr
end type

type(ty),pointer::obj
class(*),pointer::ptr!(:)
type(t1)::obj3
allocate(obj)
allocate(obj%aa,source=[10,20])
allocate(obj%bb,source=obj3)
ptr => obj%aa(2)

select type(asc=>obj%aa)
type is(integer)
  asc(2)=12
  ptr=>asc(2)
class default
   print*,"101"
end select
select type(asc=>ptr)
type is(integer)
  if(asc.ne.12)print*,"301"
class default
   print*,"101"
end select
select type(asc=>obj%bb)
type is(t1)
  asc%x =13
  ptr=>asc%x
  obj%bb = t1(asc%x)
class default
   print*,"131"
end select
select type(asc=>ptr)
type is(integer)
  if(asc.ne.13)print*,"311"
class default
   print*,"121"
end select
print*,"PASS"
end

