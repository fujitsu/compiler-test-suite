         module m
         type ty2
         integer::ttt =12
         end type
         type(ty2),save,target::obj
         type ty1
           integer,pointer :: ppp =>obj%ttt
        end type
        end module
        use m
        type(ty1),target::obj2
        if(associated(obj2%ppp).neqv..true.)print*,"101"
        if(obj2%ppp.ne.12)print*,"102"
        obj2%ppp = 15
        if(obj%ttt.ne.15)print*,"103",obj%ttt
        print*,"pass"
        end

