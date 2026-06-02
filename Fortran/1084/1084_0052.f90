type ty
 class(*),allocatable:: cptr(:)
end type

type(ty)::obj1
type(ty)::obj2(2)
integer::ii(3)=[3,2,1]
integer::pp(5) = [22,23,24,25,26]

allocate(obj1%cptr, source = [11,12])
allocate(obj2(2)%cptr, source = [21,22,23])

select type (a=>obj1%cptr)
 type is (integer)
  a(1:2) = [21,21]
  if(any(a /= [21,21])) print*,101,a
  obj1%cptr = [13,14,15]

  select type (b=>obj2(2)%cptr)
   type is (integer)
    b(ii) = [31,32,33]
    if(any(b /= [33,32,31])) print*,102,b
    obj2(2)%cptr = pp(2:5)

   class default
    print*,911
  end select

 class default
  print*,911
end select

select type (c=>obj1%cptr)
 type is (integer)
  if(any(c /= [13,14,15])) print*,201,c

  select type (d=>obj2(2)%cptr)
   type is (integer)
    if(any(d /= [23,24,25,26])) print*,202,d

   class default
    print*,911
  end select
 class default
  print*,912
end select

print*,"PASS"
end
