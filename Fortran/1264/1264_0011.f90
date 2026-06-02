 class(*),allocatable :: cptr(:)
 character(len=2) :: bb(3)

 bb = ["AA","BB","CC"]

 cptr = bb // '1' // ["22","33","44"]
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 3) print*,101
   if(len(cptr) /= 5) print*,102
   if(any(cptr /= ["AA122","BB133","CC144"])) print*,103, cptr

  class default
   print*,911
 end select

 print*,"PASS"
 end
