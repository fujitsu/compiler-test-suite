 class(*),allocatable :: cptr1(:,:,:)
 integer :: aa(3,2,2)
 integer(kind=8),allocatable :: bb(:)

 allocate(bb(3))

 bb = [3,2,1]
 aa = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa))

 cptr1 = aa + bb(2)
 select type(cptr1)
  type is(integer(kind=8))
   if(size(cptr1) /= 12) print*,101
   if(any(cptr1 /= reshape([3,4,5,6,7,8,9,10,11,12,13,14], shape(aa)))) print*,102, cptr1

  class default
   print*,911
 end select

 cptr1 = -aa
 select type(cptr1)
  type is(integer)
   if(size(cptr1) /= 12) print*,201
   if(any(cptr1 /= reshape([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12], shape(aa)))) print*,202, cptr1

  class default
   print*,912
 end select

 cptr1 = aa(2:3,:,:) + bb(2)
 select type(cptr1)
  type is(integer(kind=8))
   if(size(cptr1) /= 8) print*,301
   if(any(cptr1 /= reshape([4,5,7,8,10,11,13,14], shape(aa(2:3,:,:))))) print*,302, cptr1

  class default
   print*,913
 end select

 print*,"PASS"
 end
