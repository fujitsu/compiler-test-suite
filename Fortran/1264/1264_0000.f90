 class(*),allocatable :: cptr(:)
 integer :: aa(5)
 integer :: bb(2) = [1,2]

 aa = [1,2,3,4,5]

 cptr = aa(2:4) + bb(2) + aa(1)

 select type(cptr)
  type is(integer)
   if(size(cptr) /= 3) print*,101
   if(any(cptr /= [5,6,7])) print*,102, cptr

  class default
   print*,911
 end select

 print*,"PASS"
 end
