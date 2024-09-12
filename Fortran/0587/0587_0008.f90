       module m
        complex,target::ttt1(5)=[(10,20),(11,21),(12,23),(13,24),(14,25)]
        type ty2
          real,pointer :: ppp1(:)=>ttt1(1:5:2)%re
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp1).neqv..true.)print*,"101"
        if(any(obj5%ppp1.ne.ttt1(1:5:2)%re))print*,"102"
        print*,"PASS"
        end

