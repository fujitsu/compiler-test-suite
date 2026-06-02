class(*),allocatable:: cptr
class(*),allocatable:: cptr1
class(*),allocatable:: cptr2

character(len=:),allocatable::ch

allocate(character(len=3)::ch)
ch = "FFF"

allocate(cptr, source = "11")
allocate(cptr1, source = ch)
allocate(cptr2, source = "AA")

select type (a=>cptr)
 type is (character(len=*))
  select type (b=>cptr)
   type is (character(len=*))
    call move_alloc(cptr1, cptr) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>cptr)
 type is (character(len=*))
  if(c /= "FFF") print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

ch = "EEE"

select type (a=>cptr2)
 type is (character(len=*))
  select type (b=>cptr2)
   type is (character(len=*))
    call move_alloc(ch, cptr2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>cptr2)
 type is (character(len=*))
  if(c /= "EEE") print*,301,c
  if(len(c) /= 3) print*,302,len(c)
  if(allocated(ch)) print*,303

 class default
  print*,913
end select

print*,"PASS"
end
