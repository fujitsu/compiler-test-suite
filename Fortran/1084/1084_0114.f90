class(*),allocatable::obj1(:,:)
class(*),allocatable::obj2(:,:)
class(*),allocatable::obj3(:,:)
integer(kind=2),allocatable::ii(:,:)

allocate(ii(3,3))
ii = 21_2

allocate(integer::obj1(2,2))
allocate(integer::obj3(2,4))
allocate(integer(kind=2)::obj2(2,3))

obj2 = 11_2

select type(a=>obj1)
 type is(integer)
  select type(b=>obj1)
   type is(integer)
    call move_alloc(obj2, obj1)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(a=>obj1)
 type is(integer(kind=2))
    if(size(a) /= 6) print*,101,size(a)
    if(any(a /= 11)) print*,102

 class default
  print*,913
end select

select type(a=>obj3)
 type is(integer)
  select type(b=>obj3)
   type is(integer)
    call move_alloc(ii, obj3)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(a=>obj3)
 type is(integer(kind=2))
    if(size(a) /= 9) print*,201,size(a)
    if(any(a /= 21_2)) print*,202

 class default
  print*,913
end select
print*,"PASS"
end
