call test01()
print *,'pass'
end 

module mod
contains
 subroutine sub01(i1fun,ians)
 interface
   function i1fun() result(fun);
   integer(1) :: fun; end function
 end interface
 integer(4) ians
 ians=i1fun()
 end subroutine
 subroutine sub02(i2fun,ians)
 interface
   function i2fun() result(fun);
   integer(2) :: fun; end function
 end interface
 integer(4) ians
 ians=i2fun()
 end subroutine
 subroutine sub03(i4fun,ians)
 interface
   function i4fun() result(fun);
   integer(4) :: fun; end function
 end interface
 integer(4) ians
 ians=i4fun()
 end subroutine
 subroutine sub04(i8fun,ians)
 interface
   function i8fun() result(fun);
   integer(8) :: fun; end function
 end interface
 integer(4) ians
 ians=i8fun()
 end subroutine

 subroutine sub05(r4fun,ians)
 interface
   function r4fun() result(fun);
   real(4)  ::  fun; end function
 end interface
 integer ians
 ians=int(r4fun())
 end subroutine
 subroutine sub06(r8fun,ians)
 interface
   function r8fun() result(fun);
   real(8)  ::  fun; end function
 end interface
 integer ians
 ians=int(r8fun())
 end subroutine
 subroutine sub07(r16fun,ians)
 interface
   function r16fun() result(fun);
   real(16)  ::  fun; end function
 end interface
 integer ians
 ians=int(r16fun())
 end subroutine

 subroutine sub08(c4fun,ians)
 interface
   function c4fun() result(fun);
   complex(4)  ::  fun; end function
 end interface
 integer ians
 ians=int(c4fun())
 end subroutine
 subroutine sub09(c8fun,ians)
 interface
   function c8fun() result(fun);
   complex(8)  ::  fun; end function
 end interface
 integer ians
 ians=int(c8fun())
 end subroutine
 subroutine sub10(c16fun,ians)
 interface
   function c16fun() result(fun);
   complex(16)  ::  fun; end function
 end interface
 integer ians
 ians=int(c16fun())
 end subroutine

 subroutine sub11(l1fun,ians)
 interface
   function l1fun() result(fun);
   logical(1) :: fun; end function
 end interface
 integer(4) ians
 if (1.eq.2) print *,l1fun()
 ians=11    
 end subroutine
 subroutine sub12(l2fun,ians)
 interface
   function l2fun() result(fun);
   logical(2) :: fun; end function
 end interface
 integer(4) ians
 if (1.eq.2) print *,l2fun()
 ians=12    
 end subroutine
 subroutine sub13(l4fun,ians)
 interface
   function l4fun() result(fun);
   logical(4) :: fun; end function
 end interface
 integer(4) ians
 if (1.eq.2) print *,l4fun()
 ians=13    
 end subroutine
 subroutine sub14(l8fun,ians)
 interface
   function l8fun() result(fun);
   logical(8) :: fun; end function
 end interface
 integer(4) ians
 if (1.eq.2) print *,l8fun()
 ians=14     
 end subroutine

 subroutine sub15(chafun,ians)
 interface
   function chafun() result(fun);
   character  :: fun; end function
 end interface
 integer(4) ians
 if (1.eq.2) print *,chafun()
 ians=15
 end subroutine
end

subroutine test01()
use mod
interface sub
 module procedure sub01,sub02,sub03,sub04,sub05
 module procedure sub06,sub07,sub08,sub09,sub10
 module procedure sub11,sub12,sub13,sub14,sub15
end interface
interface 
   function i1fun() result(fun);
   integer(1) :: fun; end function
   function i2fun() result(fun);
   integer(2) :: fun; end function
   function i4fun() result(fun);
   integer(4) :: fun; end function
   function i8fun() result(fun);
   integer(8) :: fun; end function
   function r4fun() result(fun);
   real(4)  ::  fun; end function
   function r8fun() result(fun);
   real(8)  ::  fun; end function
   function r16fun() result(fun);
   real(16)  ::  fun; end function
   function c4fun() result(fun);
   complex(4)  ::  fun; end function
   function c8fun() result(fun);
   complex(8)  ::  fun; end function
   function c16fun() result(fun);
   complex(16)  ::  fun; end function
   function l1fun() result(fun);
   logical(1) :: fun; end function
   function l2fun() result(fun);
   logical(2) :: fun; end function
   function l4fun() result(fun);
   logical(4) :: fun; end function
   function l8fun() result(fun);
   logical(8) :: fun; end function
   function chafun() result(fun);
   character :: fun; end function
end interface
integer ians
call sub(i1fun,ians)
if (ians.ne.1) call errtra
call sub(i2fun,ians)
if (ians.ne.2) call errtra
call sub(i4fun,ians)
if (ians.ne.4) call errtra
call sub(i8fun,ians)
if (ians.ne.8) call errtra

call sub(r4fun,ians)
if (ians.ne.40) call errtra
call sub(r8fun,ians)
if (ians.ne.80) call errtra
call sub(r16fun,ians)
if (ians.ne.160) call errtra

call sub(c4fun,ians)
if (ians.ne.400) call errtra
call sub(c8fun,ians)
if (ians.ne.800) call errtra
call sub(c16fun,ians)
if (ians.ne.1600) call errtra

call sub(l1fun,ians)
if (ians.ne.11) call errtra
call sub(l2fun,ians)
if (ians.ne.12) call errtra
call sub(l4fun,ians)
if (ians.ne.13) call errtra
call sub(l8fun,ians)
if (ians.ne.14) call errtra

call sub(chafun,ians)
if (ians.ne.15) call errtra

call sub01(i1fun,ians)
if (ians.ne.1) call errtra
call sub02(i2fun,ians)
if (ians.ne.2) call errtra
call sub03(i4fun,ians)
if (ians.ne.4) call errtra
call sub04(i8fun,ians)
if (ians.ne.8) call errtra

call sub05(r4fun,ians)
if (ians.ne.40) call errtra
call sub06(r8fun,ians)
if (ians.ne.80) call errtra
call sub07(r16fun,ians)
if (ians.ne.160) call errtra

call sub08(c4fun,ians)
if (ians.ne.400) call errtra
call sub09(c8fun,ians)
if (ians.ne.800) call errtra
call sub10(c16fun,ians)
if (ians.ne.1600) call errtra

call sub11(l1fun,ians)
if (ians.ne.11) call errtra
call sub12(l2fun,ians)
if (ians.ne.12) call errtra
call sub13(l4fun,ians)
if (ians.ne.13) call errtra
call sub14(l8fun,ians)
if (ians.ne.14) call errtra

call sub15(chafun,ians)
if (ians.ne.15) call errtra
end

   function i1fun() result(fun);
   integer(1) :: fun; fun=1 ;end function
   function i2fun() result(fun);
   integer(2) :: fun; fun=2 ;end function
   function i4fun() result(fun);
   integer(4) :: fun; fun=4 ;end function
   function i8fun() result(fun);
   integer(8) :: fun; fun=8 ;end function
   function r4fun() result(fun);
   real(4)  ::  fun; fun=40.0_4 ;end function
   function r8fun() result(fun);
   real(8)  ::  fun; fun=80.0_8 ;end function
   function r16fun() result(fun);
   real(16)  ::  fun; fun=160.0_16 ;end function
   function c4fun() result(fun);
   complex(4)  ::  fun; fun=(400.0_4,0.0_4) ; end function
   function c8fun() result(fun);
   complex(8)  ::  fun; fun=(800.0_8,0.0_8) ; end function
   function c16fun() result(fun);
   complex(16)  ::  fun; fun=(1600.0_16,0.0_16) ; end function
   function l1fun() result(fun);
   logical(1) :: fun; fun=.true. ;end function
   function l2fun() result(fun);
   logical(2) :: fun; fun=.true. ;end function
   function l4fun() result(fun);
   logical(4) :: fun; fun=.true. ;end function
   function l8fun() result(fun);
   logical(8) :: fun; fun=.true. ;end function
   function chafun() result(fun);
   character :: fun; fun='a'    ;end function
