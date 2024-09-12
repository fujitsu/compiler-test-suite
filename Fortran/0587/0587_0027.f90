         module m
        integer,save ,target :: ttt(5)=[1,2,3,4,5]
         type ty1
           integer,pointer :: ppp(:)=>ttt(1:5:2)
        end type
        end module
        use m
        type(ty1),target::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(any(obj%ppp.ne.[1,3,5]))print*,"102"
        obj%ppp = [11,13,15]
        if(any(ttt.ne.[11,2,13,4,15]))print*,"103"
        print*,"pass"
        end

