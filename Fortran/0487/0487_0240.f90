          module m
          type  ty
           procedure() ,nopass,pointer ::p5
          end type
          interface 
           module function ifun()
                  real::ifun
           end 
          end interface
          contains
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
         print *,"pass"
         end
