        module n
        integer,save ,target :: ttt(4)=[1,2,3,4]
        end module
        module m
        use n
         type ty1
           integer,pointer :: ppp(:)=>ttt
           integer::t2=30
        end type
        type(ty1),target::obj9
        type ty2
           integer,pointer :: ppp(:)=>ttt
        end type
        
        end module
        module m2
        USE m, only :obj9
        end
        use m2
       
        use m
        type(ty1),target::obj
        integer,pointer::ptr(:)=>ttt
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(any(obj%ppp.ne.[1,2,3,4]))print*,"102"
        ptr = [11,12,13,14]
        if(any(ttt.ne.[11,12,13,14]))print*,"104"
        if(any(obj%ppp.ne.[11,12,13,14]))print*,"105"
        print*,"pass"
        end

