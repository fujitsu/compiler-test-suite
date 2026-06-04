class(*),allocatable::obj1(:)
class(*),allocatable::obj2(:)

allocate(character(len=4)::obj1(2))
allocate(character(len=5)::obj2(3))

select type(obj2)
 type is(character(len=*))
   obj2 = "AAAAA"

 class default
  print*,911
end select

select type(a=>obj1)
 type is(character(len=*))
  select type(b=>obj1)
   type is(character(len=*))
    obj1 = obj2
    obj2 = "11111"

   class default
    print*,912
  end select

 class default
  print*,912
end select

select type(a=>obj1)
 type is(character(len=*))
  if(size(a) /= 3) print*,101
  if(len(a) /= 5) print*,102
  if(any(a /= "AAAAA")) print*,103,a(1)

 class default
  print*,913
end select

print*,"PASS"
end
