          module m
          type  ty
           procedure() ,nopass,pointer ::p5
          end type
          contains
           function ifun()
                  real::ifun
                  ifun=1
                  return
               end function
         end module
         use m
         type(ty)::obj2  = ty(ifun)
         if(obj2%p5().ne.1)print*,"201"
         print *,"pass"
         end
