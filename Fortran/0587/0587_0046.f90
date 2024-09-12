         module m
         character*2,save ,target :: ttt(4)=['ab','cd','ef','gh']
         type ty1
           character(:),pointer :: ppp(:)=>ttt
        end type
        end module
        module m2
        use m
         type ty2
           character(:),pointer :: ppp(:)=>ttt
        end type
        type(ty2),target::obj2
        end
        use m2
        
        type(ty1),target::obj
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(len(obj%ppp(1)).ne.2)print*,"101"
        if(any(obj%ppp.ne.['ab','cd','ef','gh']))print*,"102"
        obj%ppp = ['sp','qr','at','mn']
        if(any(ttt.ne.['sp','qr','at','mn']))print*,"104"
        if(associated(obj2%ppp).neqv..true.)print*,"101"
        if(any(obj2%ppp.ne.['sp','qr','at','mn']))print*,"102"
        print*,"pass"
        end

