        module m
        integer,save ,target :: ttt=20
         type ty1
           integer,pointer :: ppp=>ttt
        end type
        end module
        use m
        type(ty1),target::obj
        integer,pointer::ptr =>ttt
         obj%ppp = 12
         ptr =14
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(ttt.ne.14)print*,"102"
        print*,"pass"
        end

