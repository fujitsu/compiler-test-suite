       module m
        type ty1
           complex::ttt1 =(10,20)
        end type
        type(ty1),save,target::obj2
        type ty2
          real,pointer :: ppp1=>obj2%ttt1%re
          real,pointer :: ppp2=>obj2%ttt1%im
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp1).neqv..true.)print*,"102"
        if(associated(obj5%ppp2).neqv..true.)print*,"105"
        if(obj5%ppp1.ne.10)print*,"105",obj5%ppp1
        if(obj5%ppp2.ne.20)print*,"105",obj5%ppp2
        obj5%ppp1 = 30
        obj5%ppp2 = 60
        print*,"pass"
        end

