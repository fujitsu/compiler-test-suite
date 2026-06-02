 class(*),allocatable :: cptr(:,:)
 class(*),allocatable :: cptr1(:,:)

 complex(kind=8) :: cc(2,2)
 complex(kind=8) :: ee(3,4)
 real(kind=4) :: dd(3,2)

 cc = reshape([(1.0,2.0),(3.0,4.0),(5.0,6.0),(7.0,8.0)], shape(cc))
 dd = reshape([1.0,2.0,3.0,4.0,5.0,6.0], shape(dd))
 ee = (11.0,12.0)

 allocate(cptr, source=ee)
 allocate(cptr1, source=ee)

 select type(a=>cptr)
  type is(complex(kind=8))

   select type(b=>cptr)
    type is(complex(kind=8))
     cptr = TRANSPOSE(cc(1:2:1,1:2:1)) + REAL(cc(1,1))

    class default
     print*,911
   end select

  class default
   print*,912
 end select

 select type(a=>cptr)
  type is(complex(kind=8))
   if(size(a) /= 4) print*,101
   if(any(a /= reshape([(2.0,2.0),(6.0,6.0),(4.0,4.0),(8.0,8.0)], shape(cc)))) print*,102, a

  class default
   print*,913
 end select

 select type(a=>cptr1)
  type is(complex(kind=8))

   select type(b=>cptr1)
    type is(complex(kind=8))
     cptr1 = dd + REAL(cc(1,1))

    class default
     print*,914
   end select

  class default
   print*,915
 end select

 select type(a=>cptr1)
  type is(real(kind=8))
   if(size(a) /= 6) print*,201
   if(any(a /= reshape([2.0,3.0,4.0,5.0,6.0,7.0], shape(dd)))) print*,202, a

  class default
   print*,916
 end select
 print*,"PASS"
 end
