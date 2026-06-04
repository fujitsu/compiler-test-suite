type tn
integer(kind=2)::ii1
class(*),allocatable::obj1(:)
end type

type(tn)::base(2)
class(*),allocatable::obj2(:)
class(*),allocatable::obj3(:)

allocate(character(len=2)::base(2)%obj1(2))
allocate(character(len=3)::obj2(4))
allocate(character(len=2)::obj3(5))

select type(obj2)
 type is(character(len=*))
  obj2 = ["111","222","333","444"]

 class default
  print*,911
end select

base(2)%obj1 = obj2
select type(a=>base(2)%obj1)
 type is(character(len=*))
  select type(b=>base(2)%obj1)
   type is(character(len=*))
    obj3 = base(2)%obj1

   class default
    print*,912
  end select

 class default
  print*,912
end select

select type(a=>obj3)
 type is(character(len=*))
  if(size(a) /= 4) print*,101, size(a)
  if(len(a) /= 3) print*,102, len(a)
  if(any(a /= ["111","222","333","444"])) print*,103, a

 class default
  print*,913
end select

print*,"PASS"
end
