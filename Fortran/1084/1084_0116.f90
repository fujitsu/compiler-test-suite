class(*),allocatable::obj1(:)
character(len=:),allocatable::obj2(:)

allocate(character(len=5)::obj2(4))
allocate(character(len=4)::obj1(2))

obj2 = ["EEEEE","FFFFF","GGGGG","HHHHH"]

select type(obj1)
 type is(character(len=*))
  obj1 = "BBBB"

 class default
  print*,911
end select

select type(a=>obj1)
 type is(character(len=*))
  select type(b=>obj1)
   type is(character(len=*))
    call move_alloc(obj2, obj1)

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
