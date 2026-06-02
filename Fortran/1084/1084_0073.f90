class(*),allocatable::obj1(:,:)
complex::obj2(2,3)

allocate(complex::obj1(2,4))

obj2 = CMPLX(1.0,2.0)

select type(a=>obj1)
 type is(complex)
  select type(b=>obj1)
   type is(complex)
    obj1 = obj2
    obj2 = CMPLX(3.0,4.0)

   class default
    print*,913
  end select

 class default
  print*,913
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
