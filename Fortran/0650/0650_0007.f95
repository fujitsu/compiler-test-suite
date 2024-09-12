call test01()
call test02()
print *,'pass'
end 

module mod
contains
 subroutine sub01(fun,ians)
  integer ians
  integer(kind=1) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub02(fun,ians)
  integer ians
  integer(kind=2) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub03(fun,ians)
  integer ians
  integer(kind=4) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub04(fun,ians)
  integer ians
  integer(kind=8) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub05(fun,ians)
  integer ians
  logical(kind=1) fun
  external fun
  ians=0
  if (fun().eqv..true.) ians=5
 end subroutine
 subroutine sub06(fun,ians)
  integer ians
  logical(kind=2) fun
  external fun
  ians=0
  if (fun().eqv..true.) ians=6
 end subroutine
 subroutine sub07(fun,ians)
  integer ians
  logical(kind=4) fun
  external fun
  ians=0
  if (fun().eqv..true.) ians=7
 end subroutine
 subroutine sub08(fun,ians)
  integer ians
  logical(kind=8) fun
  external fun
  ians=0
  if (fun().eqv..true.) ians=8
 end subroutine
 subroutine sub09(fun,ians)
  integer ians
  real(kind=4) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub10(fun,ians)
  integer ians
  real(kind=8) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub11(fun,ians)
  integer ians
  real(kind=16) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub12(fun,ians)
  integer ians
  complex(kind=4) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub13(fun,ians)
  integer ians
  complex(kind=8) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub14(fun,ians)
  integer ians
  complex(kind=16) fun
  external fun
  ians=int(fun())
 end subroutine
 subroutine sub15(fun,ians)
  integer ians
  character  fun
  external fun
  ians=0
  if (fun().eq.'a') ians=15
 end subroutine
 subroutine sub16(fun16,ians)
  interface
   character(1)    function fun16() result(fun); end function
  end interface
  integer ians
  ians=0
  if (fun16().eq.'b') ians=16
 end subroutine
 subroutine sub17(fun17,ians)
  interface
   character(i)    function fun17(i) result(fun); end function
  end interface
  integer ians
  ians=0
  if (fun17(1).eq.'c') ians=17
 end subroutine
end

 integer(kind=1) function fun01() result(fun); fun=1 ; end
 integer(kind=2) function fun02() result(fun); fun=2 ; end
 integer(kind=4) function fun03() result(fun); fun=3 ; end
 integer(kind=8) function fun04() result(fun); fun=4 ; end
 logical(kind=1) function fun05() result(fun); fun=.true. ; end
 logical(kind=2) function fun06() result(fun); fun=.true. ; end
 logical(kind=4) function fun07() result(fun); fun=.true. ; end
 logical(kind=8) function fun08() result(fun); fun=.true. ; end
 real(kind=4)    function fun09() result(fun); fun=9 ; end
 real(kind=8)    function fun10() result(fun); fun=10 ; end
 real(kind=16)   function fun11() result(fun); fun=11 ; end
 complex(kind=4) function fun12() result(fun); fun=12 ; end
 complex(kind=8) function fun13() result(fun); fun=13 ; end
 complex(kind=16)function fun14() result(fun); fun=14 ; end
 character       function fun15() result(fun); fun='a'; end
 character(*)    function fun16() result(fun); fun='b'; end
 character(i)    function fun17(i)result(fun); fun='c'; end
                 function fun18() result(fun); fun=18 ; end
                 function fun19() result(fun); fun=19 ; end
                 function fun20() result(fun); fun=20 ; end

subroutine test01()
use mod
interface sub
 module procedure sub01,sub02,sub03,sub04,sub05
 module procedure sub06,sub07,sub08,sub09,sub10
 module procedure sub11,sub12,sub13,sub14,sub15
end interface
 integer(kind=1) ,external:: fun01
 integer(kind=2) ,external:: fun02
 integer(kind=4) ,external:: fun03
 integer(kind=8) ,external:: fun04
 logical(kind=1) ,external:: fun05
 logical(kind=2) ,external:: fun06
 logical(kind=4) ,external:: fun07
 logical(kind=8) ,external:: fun08
 real(kind=4)    ,external:: fun09
 real(kind=8)    ,external:: fun10
 real(kind=16)   ,external:: fun11
 complex(kind=4) ,external:: fun12
 complex(kind=8) ,external:: fun13
 complex(kind=16),external:: fun14
 character       ,external:: fun15
call sub(fun01,ians)
if (ians.ne.1) call errtra
call sub(fun02,ians)
if (ians.ne.2) call errtra
call sub(fun03,ians)
if (ians.ne.3) call errtra
call sub(fun04,ians)
if (ians.ne.4) call errtra
call sub(fun05,ians)
if (ians.ne.5) call errtra
call sub(fun06,ians)
if (ians.ne.6) call errtra
call sub(fun07,ians)
if (ians.ne.7) call errtra
call sub(fun08,ians)
if (ians.ne.8) call errtra
call sub(fun09,ians)
if (ians.ne.9) call errtra
call sub(fun10,ians)
if (ians.ne.10) call errtra
call sub(fun11,ians)
if (ians.ne.11) call errtra
call sub(fun12,ians)
if (ians.ne.12) call errtra
call sub(fun13,ians)
if (ians.ne.13) call errtra
call sub(fun14,ians)
if (ians.ne.14) call errtra
call sub(fun15,ians)
if (ians.ne.15) call errtra
end
subroutine test02()
use mod
interface sub
 module procedure sub01,sub02,sub03,sub04,sub05
 module procedure sub06,sub07,sub08,sub09,sub10
 module procedure sub11,sub12,sub13,sub14,sub15
end interface
 integer(kind=1) ,external:: fun01
 integer(kind=2) ,external:: fun02
 integer(kind=4) ,external:: fun03
 integer(kind=8) ,external:: fun04
 logical(kind=1) ,external:: fun05
 logical(kind=2) ,external:: fun06
 logical(kind=4) ,external:: fun07
 logical(kind=8) ,external:: fun08
 real(kind=4)    ,external:: fun09
 real(kind=8)    ,external:: fun10
 real(kind=16)   ,external:: fun11
 complex(kind=4) ,external:: fun12
 complex(kind=8) ,external:: fun13
 complex(kind=16),external:: fun14
 character       ,external:: fun15
call sub01(fun01,ians)
if (ians.ne.1) call errtra
call sub02(fun02,ians)
if (ians.ne.2) call errtra
call sub03(fun03,ians)
if (ians.ne.3) call errtra
call sub04(fun04,ians)
if (ians.ne.4) call errtra
call sub05(fun05,ians)
if (ians.ne.5) call errtra
call sub06(fun06,ians)
if (ians.ne.6) call errtra
call sub07(fun07,ians)
if (ians.ne.7) call errtra
call sub08(fun08,ians)
if (ians.ne.8) call errtra
call sub09(fun09,ians)
if (ians.ne.9) call errtra
call sub10(fun10,ians)
if (ians.ne.10) call errtra
call sub11(fun11,ians)
if (ians.ne.11) call errtra
call sub12(fun12,ians)
if (ians.ne.12) call errtra
call sub13(fun13,ians)
if (ians.ne.13) call errtra
call sub14(fun14,ians)
if (ians.ne.14) call errtra
call sub15(fun15,ians)
if (ians.ne.15) call errtra
end
