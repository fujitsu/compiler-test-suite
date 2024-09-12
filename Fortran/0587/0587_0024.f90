       module m
        type ty1
          character*2::ttt3(5)= "aa"
        end type
        type(ty1),target::obj2
        type ty2
          character(:),pointer :: ppp3(:)=>obj2%ttt3
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp3).neqv..true.)print*,"103"
        if(obj5%ppp3(1).ne."aa")print*,"101"
        if(obj5%ppp3(2).ne."aa")print*,"101"
        print*,"pass"
        end

