class(*),allocatable:: cptr

character(len=3)::ch(3)=["211","311","411"]

allocate(cptr, source = "11")

select type (a=>cptr)
 type is (character(len=*))
  a = ch(2)
  cptr = ch(1)

  select type (b=>cptr)
   type is (character(len=*))
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
 type is (character(len=*))
  if(c /= ch(2)) print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

print*,"PASS"
end
