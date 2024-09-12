         module m
         integer,save ,target :: ttt(4)=[1,2,3,4]
         type ty1
           integer,pointer :: ppp(:)=>ttt
           procedure(sub),pointer,nopass::ptr=>sub
         end type
         type(ty1)::obj
         contains 
          subroutine sub()
           if(any(ttt.ne.[11,12,13,14]))print*,"101"
          end subroutine
        end module
        module m2
        use m, only :obj
        end module
        use m2
        obj%ppp=[11,12,13,14]
        call obj%ptr()
        print*,"pass"
        end

