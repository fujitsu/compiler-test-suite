       module m
        type ty1
           integer::ttt3(5,5)=30
        end type
        type(ty1),target::obj2
        type ty2
          integer,pointer :: ppp3(:,:)=>obj2%ttt3(1:5:1,1:5:2)
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp3).neqv..true.)print*,"103"
        if(any(obj5%ppp3.ne.obj2%ttt3(1:5:1,1:5:2)))print*,"105"
        print*,"pass"
        end

