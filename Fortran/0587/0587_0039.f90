         module m
         type ty2
         integer::ttt(5) =[1,2,3,4,5]
         end type
         type(ty2),save,target::obj
         type ty1
           integer,pointer :: ppp(:) =>obj%ttt
        end type
        end module
        use m
        type(ty1),target::obj2
        if(associated(obj2%ppp).neqv..true.)print*,"101"
        if(any(obj2%ppp.ne.[1,2,3,4,5]))print*,"102"
        obj2%ppp = [11,12,13,14,15]
        if(any(obj%ttt.ne.[11,12,13,14,15]))print*,"103"
        print*,"pass"
        end

