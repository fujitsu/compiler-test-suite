 module m1
 contains
 subroutine ss1(j4_f)
 interface
 function j4_f(p) result(a)
    character(kind=1),pointer:: a
    character(kind=1,len=*),pointer,optional::p
 end function
 end interface
 entry    ss2(j4_f)
 optional ::j4_f
 character,pointer::x1
   allocate (x1);
   x1='1'
   x1=>j4_f(x1)
 return
 end subroutine
 end module
 module interface
 interface
 function j4_ff(p) result(a)
    character(kind=1),pointer:: a
    character(kind=1,len=*),pointer,optional::p
 end function
 end interface
 end module
 use  m1
 use  interface
 call ss1(j4_ff)
 print *,'PASS'
 end
