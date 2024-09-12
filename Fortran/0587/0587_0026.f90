       module m
        character*3,target::ttt4(5)= "abc"
        type ty2
          character(:),pointer :: ppp4(:)=>ttt4(1:5:2)(1:2)
          character(2),pointer :: ppp5(:)=>ttt4(1:5:2)(1:2)
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp4).neqv..true.)print*,"103"
        if(associated(obj5%ppp5).neqv..true.)print*,"104"
        if(obj5%ppp5(1).ne."ab")print*,"101"
        if(obj5%ppp4(1).ne."ab")print*,"102"
        print*,"pass"
        end

