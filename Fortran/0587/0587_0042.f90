         module m
         type ty2
          integer::ttt(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
         end type
         type(ty2),save,target::obj
         type ty1
           integer,pointer :: ppp(:,:) =>obj%ttt(1:3:1,1:3:1)
        end type
        end module
        use m
        type(ty1),target::obj2
        obj%ttt =reshape([11,2,13,4,15,6,17,8,19],[3,3])
        if(associated(obj2%ppp).neqv..true.)print*,"101"
        if(any(obj2%ppp.ne.reshape([11,2,13,4,15,6,17,8,19],[3,3])))print*,"102"
        print*,"pass"
        end

