         module m
          integer,save ,target :: ttt=20
         end 
         module x
         use m
         type ty1
           SEQUENCE
           integer,pointer :: ppp=>ttt
         end type
         end 
         module y
         use x
           integer,pointer :: ppp=>ttt
         end 
         module m2
         use y
         end module
         use m2
         type(ty1)::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(obj%ppp.ne.20)print*,"102"
        if(ppp.ne.20)print*,"103"
        print*,"pass"
        end

