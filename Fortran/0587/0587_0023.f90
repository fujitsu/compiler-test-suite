       module m
          complex,target::ttt3
        type ty
          real,pointer::ptr=>ttt3%re
        end type
        
        end module
        use m
        type(ty)::obj5
        if(associated(obj5%ptr).neqv..true.)print*,"103"
        print*,"pass"
        end

