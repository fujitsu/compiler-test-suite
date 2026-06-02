          module m
          type  ty
           procedure(real) ,nopass,pointer ::p5
          end type
          interface 
           module function ifun()
                  real::ifun
           end 
           module function kfun()
                  real::kfun
           end 
          end interface
          contains
           module function kfun()
                  real::kfun
                  kfun=1
           end 
         end module
         submodule (m) smod
          contains
           module function ifun()
                  real::ifun
                  ifun=1
           end 
          end
         use m
         type(ty)::obj2  = ty(ifun)
         if(obj2%p5().ne.1)print*,"201"
         call xx
         print *,"sngg208h : pass"
         end
           subroutine xx
use m
             type(ty)::obj2  = ty(ifun)
             type(ty)::obj3  = ty(ifun)
             if(obj2%p5().ne.1)print*,"202"
             if(obj3%p5().ne.1)print*,"203"
           end

