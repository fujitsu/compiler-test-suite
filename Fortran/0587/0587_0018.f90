         module m
        integer,save ,target :: ttt=20
         type ty1
           integer,pointer :: ppp=>ttt
        end type
        contains 
        subroutine sub()
         type(ty1)::obj
         if(obj%ppp.ne.30)print*,"101"
        end subroutine
        end module
        use m
        type(ty1),target::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(obj%ppp.ne.20)print*,"101"
        obj%ppp =30
        if(ttt.ne.30)print*,"101"
        call sub()
        print*,"pass"
        end
