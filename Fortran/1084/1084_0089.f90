 class(*),allocatable :: cptr1(:,:,:)
 integer :: aa(3,2,2)
 integer(kind=8) :: cc(3,2,2)
 integer(kind=8),allocatable :: bb(:)

 allocate(bb(3))

 bb = [3,2,1]
 aa = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa))
 cc = 1

 allocate(cptr1, source=cc)

 select type(a=>cptr1)
  type is(integer(kind=8))

    select type(b=>cptr1)
     type is(integer(kind=8))
      cptr1 = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa)) + bb(2) + aa(1,1,1)

     class default
      print*,911
   end select

   if(size(a) /= 12) print*,101
   if(any(a /= reshape([4,5,6,7,8,9,10,11,12,13,14,15], shape(aa)))) print*,102, a

  class default
   print*,912
 end select

 select type(a=>cptr1)
  type is(integer(kind=8))

    select type(b=>cptr1)
     type is(integer(kind=8))
      cptr1 = (bb(2) + fun(aa)) * aa(1,1,1)

     class default
      print*,913
   end select
   if(size(a) /= 12) print*,201
   if(any(a /= reshape([3,4,5,6,7,8,9,10,11,12,13,14], shape(aa)))) print*,202, a

  class default
   print*,914
 end select
 print*,"PASS"

 contains
 function fun(d)
 integer,intent(inout)::d(:,:,:)
 integer,allocatable::fun(:,:,:)
 allocate(fun(3,2,2))
 fun = d
 end function
 end
