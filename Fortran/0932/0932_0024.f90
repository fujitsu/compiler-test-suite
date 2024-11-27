module m1
 interface
         module subroutine ss1()
         end subroutine
         module subroutine ss()
         end subroutine
         module subroutine oo()
         end subroutine
 end interface
 procedure(fun),pointer,protected::ptr
 integer, target :: trg=1000
 contains
         function fun()
         integer,pointer::fun
         fun=>trg
         end function
 end module

 submodule (m1) sud1
 contains
         module subroutine ss1()
         
         end subroutine
 end submodule

 submodule (m1:sud1) submod11
 contains
         module subroutine ss()
         end subroutine
 end submodule
 submodule (m1:submod11) zzzz
 contains
         module subroutine oo()
         ptr=>fun
         end subroutine
 end submodule
 
 
use m1
 call oo
 ptr()=200
 if (trg /= 200) print *,101
 print *,"Pass"
 end
