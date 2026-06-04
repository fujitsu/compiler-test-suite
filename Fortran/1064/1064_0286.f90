       type ty1
        complex cmp1
       end type
       type (ty1) ::str
       data str%cmp1%re /1.0/
       if(str%cmp1%re .ne. 1)print*,"101"
       print*,"pass"
       end
