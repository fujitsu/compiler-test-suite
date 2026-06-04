class(*),allocatable::obj1(:)
class(*),allocatable::obj2(:)

allocate(integer::obj1(2))
allocate(integer::obj2(3))

select type(obj2)
 type is(integer)
  obj2 = 11

 class default
  print*,911
end select

select type(c=>obj2)
 type is(integer)
  select type(a=>obj1)
   type is(integer)
    select type(b=>obj1)
     type is(integer)
      if(size(c) /= 3) print*,301, size(c)
      if(any(c /= 11)) print*,302, c
      obj1 = c
      c = 21

     class default
      print*,912
    end select

   class default
    print*,912
  end select
end select

select type(a=>obj1)
 type is(integer)
  if(size(a) /= 3) print*,101, size(a)
  if(any(a /= 11)) print*,102, a

 class default
  print*,913
end select

print*,"PASS"
end
