          module m
          type  ty
           procedure(integer) ,nopass,pointer ::n5
          end type
          interface 
           module function ifun()
           end 
           module function kfun()
           end 
           module subroutine ss()
           end 
          end interface
          contains
           module function kfun()
                  kfun=2
           end 
         end module
         submodule (m) smod00
             type(ty)::obj6  = ty(kfun)
             type(ty)::obj7  = ty(kfun)
             type(ty)::obj8  = ty(ifun)
             type(ty)::obj9  = ty(ifun)
          contains
           module subroutine ss()
             type(ty)::obj2  = ty(ifun)
             type(ty)::obj3  = ty(ifun)
             type(ty)::obj4  = ty(kfun)
             type(ty)::obj5  = ty(kfun)
             if(obj2%n5().ne.1)print*,"1202"
             if(obj3%n5().ne.1)print*,2203
             if(obj4%n5().ne.2)print*,"2204"
             if(obj5%n5().ne.2)print*,"2205"
             if(obj6%n5().ne.2)print*,"3202"
             if(obj7%n5().ne.2)print*,3203
             if(obj8%n5().ne.1)print*,"3204"
             if(obj9%n5().ne.1)print*,"3205"
           end 
       
         end
         submodule (m) smod
          contains
           module function ifun()
                  ifun=1
           end 
          end
         use m
         type(ty)::obj2  = ty(ifun)
         if(obj2%n5().ne.1)print*,"201"
         call xx
         call ss
         print *,"sngg211h : pass"
         end

           subroutine xx
use m
             type(ty)::obj2  = ty(ifun)
             type(ty)::obj3  = ty(ifun)
             type(ty)::obj4  = ty(kfun)
             type(ty)::obj5  = ty(kfun)
             if(obj2%n5().ne.1)print*,"202"
             if(obj3%n5().ne.1)print*,"203"
             if(obj4%n5().ne.2)print*,"204"
             if(obj5%n5().ne.2)print*,"205"
           end
