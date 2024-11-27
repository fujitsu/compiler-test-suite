module m1
 interface
         module subroutine ss1()
         end subroutine
         module subroutine ss()
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

module m2
use m1
 interface
         module subroutine oo()
         end subroutine
 end interface
 procedure(fun),pointer,protected::ptr1
 integer, target :: trg1=1000
 contains
         function fun1()
         integer,pointer::fun1
         fun1=>trg1
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
         ptr=>fun
         end subroutine
 end submodule
 submodule (m2) zzzz
 contains
         module subroutine oo()
         integer::ii
         ii = subb1()
         if (ii /= 1) print *,111
         contains
                function subb1()
                integer::subb1
                ptr1=>fun1
                subb1=1
                end function
         end subroutine 
 end submodule
 
 
use m1
use m2
 call ss
 ptr() = 5555
 if (trg /= 5555) print *,101
 call oo() 
 ptr1()=200
 if (trg1 /= 200) print *,102
 print *,"Pass"
 end
