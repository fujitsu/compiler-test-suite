       module m
        type ty1
           complex::ttt1 =(10,20)
           complex::ttt2 =(11,24)
        end type
        type(ty1),save,target::obj2
        type ty2
          real,pointer :: ppp1=>obj2%ttt2%re
          real,pointer :: ppp2=>obj2%ttt1%im
        end type
        
        end module
        use m
         call sub1
        contains
        subroutine sub1
        type(ty2)::obj5
        if(obj5%ppp1.ne.11)print*,"101"
        if(obj5%ppp2.ne.20)print*,"102"
        obj5%ppp1 = 21
        print*,"PASS"
        end
        end

