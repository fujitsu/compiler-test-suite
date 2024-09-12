       module m
         type ty1
           integer::ttt2(5)=[1,2,3,4,5]
           integer::ttt1=30
        end type
        type(ty1),save,target::obj2
        type ty2
          integer,pointer :: ppp2(:)=>obj2%ttt2
          integer,pointer :: ppp3=>obj2%ttt1
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp2).neqv..true.)print*,"102"
        if(obj5%ppp2(3).ne.3)print*,"105",obj5%ppp2
        if(obj5%ppp3.ne.30)print*,"106",obj5%ppp3
        print*,"pass"
        end

