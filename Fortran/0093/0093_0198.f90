real,pointer :: ptr1(:)
       real,pointer :: ptr2(:)
       complex,target :: cmp(4)
       cmp(3:4)=(1,2)
       cmp(1:2)=(3,4)
       ptr1=>cmp(3:4)%re
       ptr2=>cmp(1:2)%im
       if(any(ptr1 .ne. 1)) print*,"101"
       if(any(ptr2 .ne. 4)) print*,"102"
       ptr1=5
       ptr2=6
       if(any(cmp(3:4)%re .ne. 5)) print*,"103"
       if(any(cmp(1:2)%im .ne. 6)) print*,"104"
       print*,"pass"
       end

