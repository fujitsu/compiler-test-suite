          module m
          type  ty
           procedure(integer) ,nopass,pointer ::ip5
          end type
          interface 
           module function ifun()
           end 
          end interface
  end

submodule (m) smod
          contains
           module function ifun()
            ifun=1
           end
         end 
use m
             type(ty)::obj3 !!! = ty(ifun)
             obj3  = ty(ifun)
            if(obj3%ip5().ne.1)print*,"203"
            !print *,obj3%ip5()

         print *,"sngg207h : pass"
         end

