         module m
        integer,save ,target :: ttt(4)=[1,2,3,4]
         type ty1
           integer,pointer :: ppp(:)=>ttt
        end type
        end module
        use m
        type(ty1),target::obj
        integer,pointer::ptr(:)=>ttt
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(any(obj%ppp.ne.[1,2,3,4]))print*,"102"
        ptr = [11,12,13,14]
        if(any(ttt.ne.[11,12,13,14]))print*,"104"
        if(any(obj%ppp.ne.[11,12,13,14]))print*,"105"
        print*,"pass"
        end

