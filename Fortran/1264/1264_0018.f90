 class(*),allocatable :: cptr2(:)
 integer::aa,bb
 logical :: ll(3)

 aa = 10
 bb = 12
 ll = [.true.,.true.,.true.]

 cptr2 = ll .AND. (aa .EQ. bb)
 select type(cptr2)
  type is(logical)
   if(size(cptr2) /= 3) print*,101
   if(any(cptr2 .NEQV. [.false.,.false.,.false.])) print*,102, cptr2

  class default
   print*,912
 end select

 print*,"PASS"
 end
