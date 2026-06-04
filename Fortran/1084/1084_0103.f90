type tn
integer::ii1(2)
class(*),allocatable:: cptr
integer,allocatable::ii2(:)
class(*),allocatable:: cptr1
integer::ii3(2)
class(*),allocatable:: cptr2
end type

type(tn),allocatable::base(:)

character(len=:),allocatable::ch

allocate(base(3))
allocate(character(len=3)::ch)
ch = "FFF"

allocate(base(1)%cptr, source = "11")
allocate(base(2)%cptr1, source = ch)
allocate(base(3)%cptr2, source = "AA")

select type (a=>base(1)%cptr)
 type is (character(len=*))
  select type (b=>base(1)%cptr)
   type is (character(len=*))
    call move_alloc(base(2)%cptr1, base(1)%cptr) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(1)%cptr)
 type is (character(len=*))
  if(c /= "FFF") print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

ch = "EEE"

select type (a=>base(3)%cptr2)
 type is (character(len=*))
  select type (b=>base(3)%cptr2)
   type is (character(len=*))
    call move_alloc(ch, base(3)%cptr2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(3)%cptr2)
 type is (character(len=*))
  if(c /= "EEE") print*,301,c
  if(len(c) /= 3) print*,302,len(c)
  if(allocated(ch)) print*,303

 class default
  print*,913
end select

print*,"PASS"
end
