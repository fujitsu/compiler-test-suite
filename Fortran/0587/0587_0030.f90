    module m
        integer,save ,target :: ttt(3,3)=20
         type ty1
           integer,pointer :: ppp(:,:)=>ttt(1:3:2,1:3:2)
        end type
        
        end module
       
use m
        type(ty1)::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        print*,"pass"
        end

