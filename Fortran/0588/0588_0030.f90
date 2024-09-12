       module m
        type ty1
           complex::ttt1 =(10,20)
           complex::ttt2 =(11,24)
        end type
        type(ty1),save,target::obj2
        type ty2
          real,pointer :: ppp1
        end type

        type ty3
        type(ty2)::obj5 = ty2(obj2%ttt2%re)
        end type
        
        end module
        use m
         call sub1
        contains
        subroutine sub1
        type(ty3)::obj
        if(obj%obj5%ppp1.ne.11)print*,"101"
        print*,"PASS"
        end
        end

