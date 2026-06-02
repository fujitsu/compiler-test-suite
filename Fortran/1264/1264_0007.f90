 class(*),allocatable :: cptr(:)
 character(len=2) :: bb(3)
 character :: aa(3)

 aa = ["1","2","3"]
 bb = ["AA","BB","CC"]

 cptr = bb // aa(1)
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 3) print*,101
   if(len(cptr) /= 3) print*,102
   if(any(cptr /= ["AA1","BB1","CC1"])) print*,103, cptr

  class default
   print*,911
 end select

 cptr = bb(2:3) // aa(1:3:2)
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 2) print*,201
   if(len(cptr) /= 3) print*,202
   if(any(cptr /= ["BB1","CC3"])) print*,203, cptr

  class default
   print*,912
 end select

 print*,"PASS"
 end
