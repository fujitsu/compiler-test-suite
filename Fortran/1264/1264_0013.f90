 class(*),allocatable :: cptr(:,:)
 class(*),allocatable :: cptr1(:,:)

 complex(kind=8) :: cc(2,2)
 real(kind=4) :: dd(3,2)

 cc = reshape([(1.0,2.0),(3.0,4.0),(5.0,6.0),(7.0,8.0)], shape(cc))
 dd = reshape([1.0,2.0,3.0,4.0,5.0,6.0], shape(dd))

 cptr = TRANSPOSE(cc(1:2:1,1:2:1)) + REAL(cc(1,1))
 select type(cptr)
  type is(complex(kind=8))
   if(size(cptr) /= 4) print*,101
   if(any(cptr /= reshape([(2.0,2.0),(6.0,6.0),(4.0,4.0),(8.0,8.0)], shape(cc)))) print*,102, cptr

  class default
   print*,911
 end select

 cptr1 = dd + REAL(cc(1,1))
 select type(cptr1)
  type is(real(kind=8))
   if(size(cptr1) /= 6) print*,201
   if(any(cptr1 /= reshape([2.0,3.0,4.0,5.0,6.0,7.0], shape(dd)))) print*,202, cptr1

  class default
   print*,912
 end select

 print*,"PASS"
 end
