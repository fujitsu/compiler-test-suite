          module m
          type  ty
           procedure(integer) ,nopass,pointer ::n5
          end type
          interface 
           module function ifun()
           end 
           module function kfun()
           end 
          end interface
          contains
           module function kfun()
                  kfun=1
           end 
         end module
         submodule (m) smod
          contains
           module function ifun()
                  ifun=1
           end 
          end
call xx
         print *,"sngg210h : pass"
         end
           subroutine xx
use m
             type(ty)::obj2  = ty(ifun)
             type(ty)::obj3  = ty(ifun)
             if(obj2%n5().ne.1)print*,"202"
             if(obj3%n5().ne.1)print*,"203"
           end

