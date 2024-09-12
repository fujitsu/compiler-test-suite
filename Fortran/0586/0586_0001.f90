module m
integer,target::t1 =30
integer,target::t2(5,5) =30
end module
use m
type z
      integer,pointer::za2(:)=>null()
      integer,pointer::za3(:,:)=>t2(1:3:2,1:3:2)
      integer,pointer::za4=>t1
end type
 type (z) ::b(2,2)
 type (z) ::b2(2,2,3,4)
 if(associated(b(1,1)%za2).neqv..false.)print*,"101"
 if(associated(b(1,1)%za3).neqv..true.)print*,"102"
 if(associated(b2(1,1,1,1)%za2).neqv..false.)print*,"103"
 if(associated(b2(1,1,1,1)%za3).neqv..true.)print*,"104"
 if(associated(b2(1,1,1,1)%za4).neqv..true.)print*,"105"
 print*,"PASS"
end
