 class(*),allocatable :: cptr(:)

 complex(kind=8) :: cc(2)
 real(kind=4) :: dd(3)

 cc = [(1.0,2.0),(3.0,4.0)]
 dd = [1.0,2.0,3.0]

 cptr = cc + (1.0,2.0)
 select type(cptr)
  type is(complex(kind=8))
   if(size(cptr) /= 2) print*,101
   if(any(cptr /= [(2.0,4.0),(4.0,6.0)])) print*,102, cptr

  class default
   print*,911
 end select

 cptr = dd + 1.0_8
 select type(cptr)
  type is(real(kind=8))
   if(size(cptr) /= 3) print*,201
   if(any(cptr /= [2.0,3.0,4.0])) print*,202, cptr

  class default
   print*,912
 end select

 print*,"PASS"
 end
