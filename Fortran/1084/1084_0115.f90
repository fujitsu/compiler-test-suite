class(*),allocatable:: msg
character(len=:),allocatable::ch

allocate(character(len=4)::ch)

ch = "4111"

allocate(msg, source= "11")

call sub(msg, msg)

contains
subroutine sub(cptr, cptr2)
class(*),allocatable:: cptr
class(*),allocatable:: cptr1
class(*),allocatable:: cptr2

allocate(cptr1, source = "311")

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
  if(c /= "311") print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

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
  if(c /= "4111") print*,301,c
  if(len(c) /= 4) print*,302,len(c)

 class default
  print*,913
end select
print*,"PASS"
end
end
