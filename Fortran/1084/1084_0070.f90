class(*),allocatable::obj1(:)
character(len=5)::obj2(3)

allocate(character(len=4)::obj1(2))

select type(obj1)
 type is(character(len=*))
  obj1 = "BBBB"

 class default
  print*,911
end select

select type(a=>obj1)
 type is(character(len=*))
  obj2 = "AAAAA"
  obj1 = obj2
  select type(b=>obj1)
   type is(character(len=*))
    if(size(b) /= 3) print*,101
    if(any(b /= "AAAAA")) print*,102, b
    if(len(b(1)) /= 5) print*,103, len(b(1))
    obj2 = "11111"
    obj1 = ["EEEEE","FFFFF","GGGGG","HHHHH"]

 class default
  print*,913
end select

 class default
  print*,913
end select

select type(obj1)
 type is(character(len=*))
  if(size(obj1) /= 4) print*,201
  if(any(obj1 /= ["EEEEE","FFFFF","GGGGG","HHHHH"])) print*,202, obj1
  if(len(obj1(1)) /= 5) print*,203, len(obj1(1))

 class default
  print*,913
end select

print*,"PASS"
end
