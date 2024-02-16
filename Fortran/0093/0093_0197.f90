real,pointer :: ptr1(:)
       real,pointer :: ptr2(:)
       complex,target :: cmp(2)
       cmp=(2,4)
       ptr1=>cmp%re
       ptr2=>cmp%im
       if(any(ptr1 .ne. 2)) print*,"101"
       if(any(ptr2 .ne. 4)) print*,"102"
       ptr1=5
       ptr2=6
       if(any(cmp%re .ne. 5)) print*,"103"
       if(any(cmp%im .ne. 6)) print*,"104"
       print*,"pass"
       end

