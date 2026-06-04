class(*),allocatable::obj1(:)

allocate(character(len=4)::obj1(2))

select type(a=>obj1)
 type is(character(len=*))
  select type(b=>obj1)
   type is(character(len=*))
    obj1 = fun()

   class default
    print*,913
  end select

 class default
  print*,913
end select

select type(a=>obj1)
 type is(character(len=*))
  if(size(a) /= 3) print*,101, size(a)
  if(len(a(1)) /= 5) print*,102, len(a)
  if(a(1) /= "AAAAA") print*,103, a(1)
  if(a(2) /= "BBBBB") print*,104, a(2)
  if(a(3) /= "CCCCC") print*,105, a(3)

 class default
  print*,913
end select
print*,"PASS"

contains
function fun()
character(len=5)::fun(3)
fun = ["AAAAA","BBBBB","CCCCC"]
end function
end
