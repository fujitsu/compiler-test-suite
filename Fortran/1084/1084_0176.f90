type ty1
 integer::ii1=5
end type

type,extends(ty1)::ty2
 integer::ii2=10
end type

class(ty1),allocatable::obj1
type(ty2)::obj2

obj2%ii1 = 15
obj2%ii2 = 20

allocate(ty1::obj1)

select type(a=>obj1)
 type is(ty1)
  obj1 = obj2 
  call sub1(obj1)
  call sub2(a)
  call sub3(obj1,a)

 class default
  print*,911
end select
print*,"PASS"

contains
subroutine sub1(d1)
class(ty1)::d1

select type(d1)
 type is(ty2)
  if(d1%ii1 /= 15) print*,101, d1%ii1
  if(d1%ii2 /= 20) print*,102, d1%ii2

 class default
  print*,912
end select
end

subroutine sub2(d1)
class(ty1)::d1

select type(d1)
 type is(ty1)
  if(d1%ii1 /= 15) print*,101, d1%ii1

 class default
  print*,913
end select
end
subroutine sub3(d1,d2)
class(ty1)::d1
class(ty1)::d2

select type(d1)
 type is(ty2)
  if(d1%ii1 /= 15) print*,101, d1%ii1
  if(d1%ii2 /= 20) print*,102, d1%ii2
  select type(d2)
   type is(ty1)
    if(d1%ii1 /= 15) print*,101, d2%ii1
    class default
    print*,913
  end select
end select
end

end
