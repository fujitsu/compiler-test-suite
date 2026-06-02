class(*),allocatable:: cptr

real::ch(2) = [21.0,31.0]

allocate(cptr, source = 11.0)

select type (a=>cptr)
 type is (real)
  a = ch(2)
  cptr = ch(1)

  select type (b=>cptr)
   type is (real)
    if(b /= ch(1)) print*,101,b
    b = ch(1)
    cptr = ch(2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>cptr)
 type is (real)
  if(c /= ch(2)) print*,201,c

 class default
  print*,913
end select

print*,"PASS"
end
