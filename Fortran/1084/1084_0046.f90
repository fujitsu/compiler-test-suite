type tn
integer(kind=8)::ii1
class(*),allocatable:: cptr
end type

type(tn)::obj
integer::ii(2)=[21,31]

allocate(obj%cptr, source = 11)

select type (a=>obj%cptr)
 type is (integer)
  a = ii(2)
  obj%cptr = ii(1)

  select type (b=>obj%cptr)
   type is (integer)
    if(b /= ii(1)) print*,101,b
    b = ii(1)
    obj%cptr = ii(2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>obj%cptr)
 type is (integer)
  if(c /= ii(2)) print*,201,c

 class default
  print*,913
end select

print*,"PASS"
end
