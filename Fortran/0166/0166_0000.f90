        complex cmp1
        complex cmp2(2)
        complex cmp3(2)
        complex cmp4(2)
        data cmp1%re /1.0/
        data cmp2%re /2.0,5.0/
        data cmp3(1)%re /3.0/
        data cmp4(1:2)%im /4.0,5.0/
        if(cmp1%re .ne. 1.0)print*,"101"
        if(cmp2(1)%re .ne. 2.0)print*,"102"
        if(cmp2(2)%re .ne. 5.0)print*,"103"
       if(cmp3(1)%re .ne. 3.0)print*,"104"
       if(cmp4(1)%im .ne. 4.0)print*,"105"
       if(cmp4(2)%im .ne. 5.0)print*,"106"
       print*,"pass"
       end
