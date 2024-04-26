type ty1
        complex cmp1
        complex cmp2(2)
        complex cmp3(2)
        complex cmp4(2)
end type
type (ty1) ::str
        data str%cmp1%re /1.0/
        data str%cmp2%re /2.0,5.0/
        data str%cmp3(1)%re /3.0/
        data str%cmp4(1:2)%im /4.0,5.0/
        if(str%cmp1%re .ne. 1)print*,"101"
        if(str%cmp2(1)%re .ne. 2)print*,"102"
        if(str%cmp2(2)%re .ne. 5)print*,"103"
       if(str%cmp3(1)%re .ne. 3)print*,"104"
       if(str%cmp4(1)%im .ne. 4)print*,"105"
       if(str%cmp4(2)%im .ne. 5)print*,"106"
       print*,"pass"
       end
