class(*),allocatable:: msg
character(len=:),allocatable::ch

type tn
integer::ii1(2)
class(*),allocatable::cptr
character(len=5)::ii2(2)
class(*),allocatable:: cptr2
end type

type(tn)::base(3)
class(*),allocatable:: cptr1

allocate(character(len=4)::ch)
allocate(msg, source= "11")
allocate(base(3)%cptr, source = "222")
allocate(base(2)%cptr2, source = "SS")

ch = "4111"

call sub(base)

contains
subroutine sub(base)
type(tn)::base(:)

allocate(cptr1, source = "311")

select type (a=>base(3)%cptr)
 type is (character(len=*))
  select type (b=>base(3)%cptr)
   type is (character(len=*))
    call move_alloc(cptr1, base(3)%cptr)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(3)%cptr)
 type is (character(len=*))
  if(c /= "311") print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

select type (a=>base(2)%cptr2)
 type is (character(len=*))
  select type (b=>base(2)%cptr2)
   type is (character(len=*))
    call move_alloc(ch, base(2)%cptr2)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(2)%cptr2)
 type is (character(len=*))
  if(c /= "4111") print*,301,c
  if(len(c) /= 4) print*,302,len(c)

 class default
  print*,913
end select
print*,"PASS"
end
end
