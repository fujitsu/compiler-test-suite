         integer,target::t1=20
         call sub()
         contains
         subroutine sub()
         integer :: arr(3)
         integer :: crr(6)
         integer :: arr2(3,3)
         integer :: crr2(6)
         integer :: jj
         integer,pointer::ptr
         integer,pointer::ptr2
         data (arr(ii),ii=1,3,2), (crr(jj),jj=1,6,2),ptr   /1,2,3,4,5,t1/
         data ((arr2(ii,jj),ii=1,3,2),jj=1,3,2), (crr2(kk),kk=1,6,2),ptr2   /1,2,3,4,5,6,7,t1/
         if(any(crr.ne.[3,0,4,0,5,0]))print*,"102"
         if(any(arr.ne.[1,0,2]))print*,"104"
         if(associated(ptr).neqv..true.)print*,"101"
         if(ptr.ne.20)print*,"103"
         if(associated(ptr2).neqv..true.)print*,"101"
         if(ptr2.ne.20)print*,"103"
         print*,"PASS"
         end
         end
