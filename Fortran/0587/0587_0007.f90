       module m
        complex,target::ttt1(5) =(10,20)
        type ty2
          real,pointer :: ppp1(:)=>ttt1(1:5:2)%re
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp1).neqv..true.)print*,"102"
        if(any(obj5%ppp1.ne.[10,10,10]))print*,"101",obj5%ppp1
        obj5%ppp1 = [11,12,13]
        if(any(ttt1%re.ne.[11,10,12,10,13]))print*,"103", ttt1
        print*,"PASS"
        end

