type ty1
 integer::ii1=5
end type

type,extends(ty1)::ty2
 integer::ii2=10
end type

type ty3
class(ty1),allocatable::obj1(:)
end type
type(ty3)::obj
type(ty2)::obj2(5)

obj2%ii1 = 15
obj2%ii2 = 20

allocate(ty1::obj%obj1(5))
select type(a=>obj%obj1)
 type is(ty1)
   call sub(a)
   obj%obj1 = obj2 
   call sub2(obj%obj1(1:3:2))
 class default
  print*,911
end select
print*,"PASS"

contains

subroutine sub2(d1)
class(*)::d1(:)
select type(d1)
 type is(ty2)
  if(any(d1%ii1 /= 15)) print*,102, d1%ii1
  if(any(d1%ii2 /= 20)) print*,103, d1%ii2
 class default
  print*,913
end select
end
subroutine sub(d1)
class(*)::d1(:)
select type(d1)
 type is(ty1)
  if(any(d1%ii1 /= 5)) print*,101, d1%ii1
 class default
  print*,915
end select

end
end
