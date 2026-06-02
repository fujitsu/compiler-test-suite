class(*),allocatable::obj1(:)
class(*),allocatable::obj2(:)
class(*),allocatable::obj3(:)

allocate(character(len=2)::obj1(2))
allocate(character(len=3)::obj2(3))
allocate(character(len=2)::obj3(4))

select type(obj2)
 type is(character(len=*))
  obj2 = ["111","222","333"]

 class default
  print*,911
end select

obj1 = obj2
select type(a=>obj1)
 type is(character(len=*))
  select type(b=>obj1)
   type is(character(len=*))
    obj3 = obj1

   class default
    print*,912
  end select

 class default
  print*,912
end select

select type(a=>obj3)
 type is(character(len=*))
  if(size(a) /= 3) print*,101, size(a)
  if(len(a) /= 3) print*,102, len(a)
  if(any(a /= ["111","222","333"])) print*,103, a

 class default
  print*,913
end select

print*,"PASS"
end
