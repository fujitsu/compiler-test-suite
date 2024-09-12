         module m
        integer,save ,private,target :: ttt=1
        integer,save ,protected,target :: ttt2(4)=[21,22,23,24]
        integer,save ,public,target :: ttt3(4)=[31,32,33,34]
         
        type ty1
           integer,pointer :: ppp=>ttt
           integer,pointer :: ppp2(:)=>ttt2(1:3:2)
           integer,pointer :: ppp3=>ttt3(1)
        end type
        end module
        use m
        type(ty1),target::obj
        integer,pointer::ptr(:)=>ttt3
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(associated(obj%ppp2).neqv..true.)print*,"201"
        if(associated(obj%ppp3).neqv..true.)print*,"301"
        if(obj%ppp.ne.1)print*,"102",obj%ppp
        if(any(obj%ppp2.ne.[21,23]))print*,"112"
        if(obj%ppp3.ne.31)print*,"211"
        ptr = [11,12,13,14]
        if(any(ttt3.ne.[11,12,13,14]))print*,"104"
        if(obj%ppp3.ne.11)print*,"105"
        print*,"pass"
        end

