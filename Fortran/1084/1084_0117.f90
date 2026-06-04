class(*),allocatable::obj1(:,:)
class(*),allocatable::obj2(:,:)

allocate(complex::obj1(2,4))
allocate(complex::obj2(2,3))

select type(obj2)
 type is(complex)
  obj2 = CMPLX(1.0,2.0)

 class default
  print*,911
end select

select type(a=>obj1)
 type is(complex)
  select type(b=>obj1)
   type is(complex)
    call move_alloc(obj2, obj1)

   class default
    print*,912
  end select

 class default
  print*,912
end select

select type(a=>obj1)
 type is(complex)
  if(any(a /= CMPLX(1.0,2.0))) print*,101,a
  if(size(a) /= 6) print*,102,size(a)

 class default
  print*,913
end select

print*,"PASS"
end
