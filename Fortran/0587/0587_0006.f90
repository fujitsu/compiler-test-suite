       module m
        complex,target::ttt1(5) =(10,20)
        type ty2
          real,pointer :: ppp1(:)=>ttt1%re
          real,pointer :: ppp2(:)=>ttt1%im
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp1).neqv..true.)print*,"102"
        if(associated(obj5%ppp2).neqv..true.)print*,"105"
        if(any(obj5%ppp1.ne.[10,10,10,10,10]))print*,"101"
        if(any(obj5%ppp2.ne.[20,20,20,20,20]))print*,"102"
        obj5%ppp2 = [1,2,3,4,5]
        obj5%ppp1 = [11,12,13,14,15]
        print*,"pass"
        end

