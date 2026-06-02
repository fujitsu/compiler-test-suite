type ty
 class(*),allocatable :: cptr1(:,:,:)
end type

 type(ty)::obj(2)

 integer :: aa(3,2,2)
 integer(kind=8) :: cc(3,2,2)
 integer(kind=8),allocatable :: bb(:)

 allocate(bb(3))

 bb = [3,2,1]
 aa = reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa))
 cc = 1

 allocate(obj(2)%cptr1, source=cc)

 select type(a=>obj(2)%cptr1)
  type is(integer(kind=8))
   a = aa(1:3,1:2,1:2) 

   select type(b=>obj(2)%cptr1)
    type is(integer(kind=8))
     if(size(b) /= 12) print*,501
     if(any(b /= reshape([1,2,3,4,5,6,7,8,9,10,11,12], shape(aa)))) print*,502

     obj(2)%cptr1 = aa + bb(2)

    class default
     print*,511
   end select

  class default
   print*,911
 end select

 select type(a=>obj(2)%cptr1)
  type is(integer(kind=8))
   if(size(a) /= 12) print*,101
   if(any(a /= reshape([3,4,5,6,7,8,9,10,11,12,13,14], shape(aa)))) print*,102, a

  class default
   print*,912
 end select

 select type(a=>obj(2)%cptr1)
  type is(integer(kind=8))

   select type(b=>obj(2)%cptr1)
    type is(integer(kind=8))
     obj(2)%cptr1 = -aa

    class default
     print*,913
   end select

  class default
   print*,914
 end select

 select type(c=>obj(2)%cptr1)
  type is(integer)
   if(size(c) /= 12) print*,201
   if(any(c /= reshape([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12], shape(aa)))) print*,202, c

  class default
   print*,915
 end select

 select type(a=>obj(2)%cptr1)
  type is(integer)

   select type(b=>obj(2)%cptr1)
    type is(integer)
     obj(2)%cptr1 = aa(2:3,:,:) + bb(2)

    class default
     print*,916
   end select

  class default
   print*,917
 end select

 select type(a=>obj(2)%cptr1)
  type is(integer(kind=8))
   if(size(a) /= 8) print*,301
   if(any(a /= reshape([4,5,7,8,10,11,13,14], shape(aa(2:3,:,:))))) print*,302,a

  class default
   print*,918
 end select

 print*,"PASS"
 end
