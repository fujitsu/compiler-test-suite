type tn
integer(kind=2)::ii1(2)
class(*),allocatable::obj1(:)
integer(kind=4)::ii2(3)
character(len=:),allocatable::obj2(:)
end type

class(tn),allocatable::base(:)

allocate(base(3))
allocate(character(len=5)::base(2)%obj2(4))
allocate(character(len=4)::base(3)%obj1(2))

base(2)%obj2 = ["EEEEE","FFFFF","GGGGG","HHHHH"]

select type(a=>base(3)%obj1)
 type is(character(len=*))
  a = "BBBB"

 class default
  print*,911
end select

select type(a=>base(3)%obj1)
 type is(character(len=*))
  select type(b=>base(3)%obj1)
   type is(character(len=*))
    call move_alloc(base(2)%obj2, base(3)%obj1)

 class default
  print*,913
end select

 class default
  print*,913
end select

select type(a=>base(3)%obj1)
 type is(character(len=*))
  if(size(a) /= 4) print*,201
  if(any(a /= ["EEEEE","FFFFF","GGGGG","HHHHH"])) print*,202,a
  if(len(a(1)) /= 5) print*,203, len(a(1))

 class default
  print*,913
end select

print*,"PASS"
end
