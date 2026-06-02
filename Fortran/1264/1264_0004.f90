 class(*),allocatable :: cptr(:,:,:)
 integer(kind=8),allocatable :: qq(:)
 integer :: pp(3,2,2)

 allocate(qq(3))

 call sub(cptr, pp, qq)

 contains
 function fun(d)
 integer,intent(inout)::d(:,:,:)
 integer,allocatable::fun(:,:,:)
 allocate(fun(3,2,2))
 fun = d
 end function

 subroutine sub(cptr1, aa, bb)
 class(*),allocatable :: cptr1(:,:,:)
 integer :: aa(3,2,2)
 integer(kind=8),allocatable :: bb(:)

 bb = [3,2,1]
 aa = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa))

 cptr1 = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa)) + bb(2) + aa(1,1,1)
 select type(cptr1)
  type is(integer(kind=8))
   if(size(cptr1) /= 12) print*,101
   if(any(cptr1 /= reshape([4,5,6,7,8,9,10,11,12,13,14,15], shape(aa)))) print*,102, cptr1

  class default
   print*,911
 end select

 cptr1 = (bb(2) + fun(aa)) * aa(1,1,1)
 select type(cptr1)
  type is(integer(kind=8))
   if(size(cptr1) /= 12) print*,201
   if(any(cptr1 /= reshape([3,4,5,6,7,8,9,10,11,12,13,14], shape(aa)))) print*,202, cptr1

  class default
   print*,912
 end select
 print*,"PASS"
 end subroutine
 end
