       module m
        type ty1
           integer::ttt3(3)
        end type
        type ty3
         type(ty1)::obj2
        end type
        type(ty3),target::obj3
        type ty4
          integer,pointer :: ppp3(:)=>obj3%obj2%ttt3(1:3:2)
        end type
        
        end module
        use m
        type(ty4)::obj5
        if(associated(obj5%ppp3).neqv..true.)print*,"103"
        print*,"pass"
        end

