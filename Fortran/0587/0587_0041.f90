         module m
         type ty2
         integer::ttt(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
         end type
         type(ty2),save,target::obj
         type ty1
           integer,pointer :: ppp(:,:) =>obj%ttt
        end type
        end module
        use m
        type(ty1),target::obj2
        if(associated(obj2%ppp).neqv..true.)print*,"101"
        if(any(obj2%ppp.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"102",obj2%ppp
        print*,"pass"
        end

