       module m
        complex,target,private::ttt1(5) =(10,20)
        type ty2
          real,pointer :: ppp1(:)=>ttt1%re
          real,pointer :: ppp2(:)=>ttt1%im
        end type
        contains 
        subroutine sub
        if(any(ttt1.ne.[(11,1),(12,2),(13,3),(14,4),(15,5)]))print*,"106"
        end 
        
        end module
        use m
        type(ty2)::obj5
        if(associated(obj5%ppp1).neqv..true.)print*,"102"
        if(associated(obj5%ppp2).neqv..true.)print*,"105"
        if(any(obj5%ppp1.ne.[10,10,10,10,10]))print*,"101", obj5%ppp1
        if(any(obj5%ppp2.ne.[20,20,20,20,20]))print*,"102"
        obj5%ppp2 = [1,2,3,4,5]
        obj5%ppp1 = [11,12,13,14,15]
        call sub
        print*,"pass"
        end

