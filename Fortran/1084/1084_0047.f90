type tn
class(*),allocatable:: msg
character(len=3)::ch(3)=["211","311","411"]
end type

type(tn)::base(3)

allocate(base(2)%msg, source= "11")

call sub(base)

contains
subroutine sub(base)
type(tn)::base(2)

select type (a=>base(2)%msg)
 type is (character(len=*))
  a = base(2)%ch(2)
  base(2)%msg = base(2)%ch(1)

  select type (b=>base(2)%msg)
   type is (character(len=*))
    if(b /= base(2)%ch(1)) print*,101,b
    b = base(2)%ch(1)
    base(2)%msg = base(2)%ch(2) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(2)%msg)
 type is (character(len=*))
  if(c /= base(2)%ch(2)) print*,201,c
  if(len(c) /= 3) print*,202,len(c)

 class default
  print*,913
end select

print*,"PASS"
end
end
