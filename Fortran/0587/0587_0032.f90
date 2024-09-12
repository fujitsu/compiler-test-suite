    module m
        character*3,save ,target :: ttt(3,3)= "aaa"
         type ty1
           character*2,pointer :: ppp(:,:)=>ttt(1:3:2,1:3:2)(1:2)
        end type
        
        end module
       
use m
        type(ty1)::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        print*,"pass"
        end

