         character*4,target,save :: tar1='abcd'
         character*4,target,save :: tar2='fort'
         character*3,target,save :: tar3='hcl'

         character*3,pointer :: ptr1
         character*3,pointer :: ptr2
         character*3,pointer :: ptr3

         data ptr1/tar1(2:4)/
         data ptr2,ptr3/tar2(1:3),tar3/

         if (ptr1 .ne. 'bcd')print*,"101"
         if (ptr2 .ne. 'for')print*,"102"
         if (ptr3 .ne. 'hcl')print*,"103"

         if(associated(ptr1) .eqv. .false.)print*,"104"
         if(associated(ptr2) .eqv. .false.)print*,"105"
         if(associated(ptr3) .eqv. .false.)print*,"106"

         print *,'pass'
         end
