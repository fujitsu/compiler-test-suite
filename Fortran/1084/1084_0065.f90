class(*),allocatable:: cptr

integer::ii(2)=[21,31]

allocate(cptr, source = 11)

select type (a=>cptr)
 type is (integer)
  a = ii(2)
  cptr = ii(1)

  select type (b=>cptr)
   type is (integer)
    if(b /= ii(1)) print*,101,b
    b = ii(1)
    cptr = ii(2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>cptr)
 type is (integer)
  if(c /= ii(2)) print*,201,c

 class default
  print*,913
end select

print*,"PASS"
end
