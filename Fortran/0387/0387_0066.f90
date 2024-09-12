module mod01
 interface
  function       func01()   result(rst1)  bind(c)
   integer :: rst1
  end function
  function       func02()   result(rst2)  bind(c,  name  =  'bind_prc01')
   integer :: rst2
  end function
  subroutine     sub01(i4)                bind(c)
   integer :: i4
  end subroutine
  subroutine     sub02(i4)                bind(c,  name  =  'bind_prc02')
   integer :: i4
  end subroutine
 end interface
 contains
  function       m01f01()   result(rst1)  bind(c)
   integer :: rst1
   rst1 = 1
  end function
  function       m01f02()   result(rst2)  bind(c,  name  =  'bind_prc03')
   integer :: rst2
   rst2 = 2
  end function
  subroutine     m01s01(i4)               bind(c)
   integer :: i4
   i4   = 4
  end subroutine
  subroutine     m01s02(i4)               bind(c,  name  =  'bind_prc04')
   integer :: i4
   i4   = 8
  end subroutine
end module

use mod01

interface
 function       ifunc01()   result(rst1)  bind(c)
  integer :: rst1
 end function
 function       ifunc02()   result(rst2)  bind(c,  name  =  'bind_prc05')
  integer :: rst2
 end function
 subroutine     isub01(i4)                bind(c)
  integer :: i4
 end subroutine
 subroutine     isub02(i4)                bind(c,  name  =  'bind_prc06')
  integer :: i4
 end subroutine
end interface

procedure(func01),   bind(c)                                  ::  out_func01
procedure(func02),   bind(c,  name = 'bind_prc01A')           ::  out_func02
procedure(func01),   bind(c),                        pointer  ::  func1_bindc_ptr01
procedure(func02),   bind(c),                        pointer  ::  func1_bindc_ptr02

procedure(m01f01),   bind(c)                                  ::  out_func03
procedure(m01f02),   bind(c,  name = 'bind_prc03A')           ::  out_func04
procedure(m01f01),   bind(c),                        pointer  ::  func1_bindc_ptr03
procedure(m01f02),   bind(c),                        pointer  ::  func1_bindc_ptr04

procedure(ifunc01),  bind(c)                                  ::  out_func05
procedure(ifunc02),  bind(c,  name = 'bind_prc05A')           ::  out_func06
procedure(ifunc01),  bind(c),                        pointer  ::  func1_bindc_ptr05
procedure(ifunc02),  bind(c),                        pointer  ::  func1_bindc_ptr06

procedure(sub01),    bind(c)                                  ::  out_sub01
procedure(sub02),    bind(c,  name = 'bind_prc02A')           ::  out_sub02
procedure(sub01),    bind(c),                        pointer  ::  sub1_bindc_ptr01
procedure(sub02),    bind(c),                        pointer  ::  sub1_bindc_ptr02

procedure(m01s01),   bind(c)                                  ::  out_sub03
procedure(m01s02),   bind(c,  name = 'bind_prc04A')           ::  out_sub04
procedure(m01s01),   bind(c),                        pointer  ::  sub1_bindc_ptr03
procedure(m01s02),   bind(c),                        pointer  ::  sub1_bindc_ptr04

procedure(isub01),   bind(c)                                  ::  out_sub05
procedure(isub02),   bind(c,  name = 'bind_prc06A')           ::  out_sub06
procedure(isub01),   bind(c),                        pointer  ::  sub1_bindc_ptr05
procedure(isub02),   bind(c),                        pointer  ::  sub1_bindc_ptr06

procedure(func01),                                   pointer  ::  func_yobi_ptr01
procedure(func02),                                   pointer  ::  func_yobi_ptr02
procedure(m01f01),                                   pointer  ::  func_yobi_ptr03
procedure(m01f02),                                   pointer  ::  func_yobi_ptr04
procedure(ifunc01),                                  pointer  ::  func_yobi_ptr05
procedure(ifunc02),                                  pointer  ::  func_yobi_ptr06
procedure(sub01),                                    pointer  ::  sub_yobi_ptr01
procedure(sub02),                                    pointer  ::  sub_yobi_ptr02
procedure(m01s01),                                   pointer  ::  sub_yobi_ptr03
procedure(m01s02),                                   pointer  ::  sub_yobi_ptr04
procedure(isub01),                                   pointer  ::  sub_yobi_ptr05
procedure(isub02),                                   pointer  ::  sub_yobi_ptr06

integer                                                       ::  i4a,  i4b

func1_bindc_ptr01  =>  func01

if (func1_bindc_ptr01().ne.func01())     print *,'error'

func1_bindc_ptr01  =>  func02

if (func1_bindc_ptr01().ne.func02())     print *,'error'

func1_bindc_ptr01  =>  m01f01

if (func1_bindc_ptr01().ne.m01f01())     print *,'error'

func1_bindc_ptr01  =>  m01f02

if (func1_bindc_ptr01().ne.m01f02())     print *,'error'

func1_bindc_ptr01  =>  ifunc01

if (func1_bindc_ptr01().ne.ifunc01())    print *,'error'

func1_bindc_ptr01  =>  ifunc02

if (func1_bindc_ptr01().ne.ifunc02())    print *,'error'

func1_bindc_ptr01  =>  out_func01

if (func1_bindc_ptr01().ne.out_func01()) print *,'error'

func1_bindc_ptr01  =>  out_func02

if (func1_bindc_ptr01().ne.out_func02()) print *,'error'

func1_bindc_ptr01  =>  out_func03

if (func1_bindc_ptr01().ne.out_func03()) print *,'error'

func1_bindc_ptr01  =>  out_func04

if (func1_bindc_ptr01().ne.out_func04()) print *,'error'

func1_bindc_ptr01  =>  out_func05

if (func1_bindc_ptr01().ne.out_func05()) print *,'error'

func1_bindc_ptr01  =>  out_func06

if (func1_bindc_ptr01().ne.out_func06()) print *,'error'

func1_bindc_ptr02  =>  func01

if (func1_bindc_ptr02().ne.func01())     print *,'error'

func1_bindc_ptr02  =>  func02

if (func1_bindc_ptr02().ne.func02())     print *,'error'

func1_bindc_ptr02  =>  m01f01

if (func1_bindc_ptr02().ne.m01f01())     print *,'error'

func1_bindc_ptr02  =>  m01f02

if (func1_bindc_ptr02().ne.m01f02())     print *,'error'

func1_bindc_ptr02  =>  ifunc01

if (func1_bindc_ptr02().ne.ifunc01())    print *,'error'

func1_bindc_ptr02  =>  ifunc02

if (func1_bindc_ptr02().ne.ifunc02())    print *,'error'

func1_bindc_ptr02  =>  out_func01

if (func1_bindc_ptr02().ne.out_func01()) print *,'error'

func1_bindc_ptr02  =>  out_func02

if (func1_bindc_ptr02().ne.out_func02()) print *,'error'

func1_bindc_ptr02  =>  out_func03

if (func1_bindc_ptr02().ne.out_func03()) print *,'error'

func1_bindc_ptr02  =>  out_func04

if (func1_bindc_ptr02().ne.out_func04()) print *,'error'

func1_bindc_ptr02  =>  out_func05

if (func1_bindc_ptr02().ne.out_func05()) print *,'error'

func1_bindc_ptr02  =>  out_func06

if (func1_bindc_ptr02().ne.out_func06()) print *,'error'

func1_bindc_ptr03  =>  func01

if (func1_bindc_ptr03().ne.func01())     print *,'error'

func1_bindc_ptr03  =>  func02

if (func1_bindc_ptr03().ne.func02())     print *,'error'

func1_bindc_ptr03  =>  m01f01

if (func1_bindc_ptr03().ne.m01f01())     print *,'error'

func1_bindc_ptr03  =>  m01f02

if (func1_bindc_ptr03().ne.m01f02())     print *,'error'

func1_bindc_ptr03  =>  ifunc01

if (func1_bindc_ptr03().ne.ifunc01())    print *,'error'

func1_bindc_ptr03  =>  ifunc02

if (func1_bindc_ptr03().ne.ifunc02())    print *,'error'

func1_bindc_ptr03  =>  out_func01

if (func1_bindc_ptr03().ne.out_func01()) print *,'error'

func1_bindc_ptr03  =>  out_func02

if (func1_bindc_ptr03().ne.out_func02()) print *,'error'

func1_bindc_ptr03  =>  out_func03

if (func1_bindc_ptr03().ne.out_func03()) print *,'error'

func1_bindc_ptr03  =>  out_func04

if (func1_bindc_ptr03().ne.out_func04()) print *,'error'

func1_bindc_ptr03  =>  out_func05

if (func1_bindc_ptr03().ne.out_func05()) print *,'error'

func1_bindc_ptr03  =>  out_func06

if (func1_bindc_ptr03().ne.out_func06()) print *,'error'

func1_bindc_ptr04  =>  func01

if (func1_bindc_ptr04().ne.func01())     print *,'error'

func1_bindc_ptr04  =>  func02

if (func1_bindc_ptr04().ne.func02())     print *,'error'

func1_bindc_ptr04  =>  m01f01

if (func1_bindc_ptr04().ne.m01f01())     print *,'error'

func1_bindc_ptr04  =>  m01f02

if (func1_bindc_ptr04().ne.m01f02())     print *,'error'

func1_bindc_ptr04  =>  ifunc01

if (func1_bindc_ptr04().ne.ifunc01())    print *,'error'

func1_bindc_ptr04  =>  ifunc02

if (func1_bindc_ptr04().ne.ifunc02())    print *,'error'

func1_bindc_ptr04  =>  out_func01

if (func1_bindc_ptr04().ne.out_func01()) print *,'error'

func1_bindc_ptr04  =>  out_func02

if (func1_bindc_ptr04().ne.out_func02()) print *,'error'

func1_bindc_ptr04  =>  out_func03

if (func1_bindc_ptr04().ne.out_func03()) print *,'error'

func1_bindc_ptr04  =>  out_func04

if (func1_bindc_ptr04().ne.out_func04()) print *,'error'

func1_bindc_ptr04  =>  out_func05

if (func1_bindc_ptr04().ne.out_func05()) print *,'error'

func1_bindc_ptr04  =>  out_func06

if (func1_bindc_ptr04().ne.out_func06()) print *,'error'

func1_bindc_ptr05  =>  func01

if (func1_bindc_ptr05().ne.func01())     print *,'error'

func1_bindc_ptr05  =>  func02

if (func1_bindc_ptr05().ne.func02())     print *,'error'

func1_bindc_ptr05  =>  m01f01

if (func1_bindc_ptr05().ne.m01f01())     print *,'error'

func1_bindc_ptr05  =>  m01f02

if (func1_bindc_ptr05().ne.m01f02())     print *,'error'

func1_bindc_ptr05  =>  ifunc01

if (func1_bindc_ptr05().ne.ifunc01())    print *,'error'

func1_bindc_ptr05  =>  ifunc02

if (func1_bindc_ptr05().ne.ifunc02())    print *,'error'

func1_bindc_ptr05  =>  out_func01

if (func1_bindc_ptr05().ne.out_func01()) print *,'error'

func1_bindc_ptr05  =>  out_func02

if (func1_bindc_ptr05().ne.out_func02()) print *,'error'

func1_bindc_ptr05  =>  out_func03

if (func1_bindc_ptr05().ne.out_func03()) print *,'error'

func1_bindc_ptr05  =>  out_func04

if (func1_bindc_ptr05().ne.out_func04()) print *,'error'

func1_bindc_ptr05  =>  out_func05

if (func1_bindc_ptr05().ne.out_func05()) print *,'error'

func1_bindc_ptr05  =>  out_func06

if (func1_bindc_ptr05().ne.out_func06()) print *,'error'

func1_bindc_ptr06  =>  func01

if (func1_bindc_ptr06().ne.func01())     print *,'error'

func1_bindc_ptr06  =>  func02

if (func1_bindc_ptr06().ne.func02())     print *,'error'

func1_bindc_ptr06  =>  m01f01

if (func1_bindc_ptr06().ne.m01f01())     print *,'error'

func1_bindc_ptr06  =>  m01f02

if (func1_bindc_ptr06().ne.m01f02())     print *,'error'

func1_bindc_ptr06  =>  ifunc01

if (func1_bindc_ptr06().ne.ifunc01())    print *,'error'

func1_bindc_ptr06  =>  ifunc02

if (func1_bindc_ptr06().ne.ifunc02())    print *,'error'

func1_bindc_ptr06  =>  out_func01

if (func1_bindc_ptr06().ne.out_func01()) print *,'error'

func1_bindc_ptr06  =>  out_func02

if (func1_bindc_ptr06().ne.out_func02()) print *,'error'

func1_bindc_ptr06  =>  out_func03

if (func1_bindc_ptr06().ne.out_func03()) print *,'error'

func1_bindc_ptr06  =>  out_func04

if (func1_bindc_ptr06().ne.out_func04()) print *,'error'

func1_bindc_ptr06  =>  out_func05

if (func1_bindc_ptr06().ne.out_func05()) print *,'error'

func1_bindc_ptr06  =>  out_func06

if (func1_bindc_ptr06().ne.out_func06()) print *,'error'

func_yobi_ptr01    =>  func1_bindc_ptr01

func1_bindc_ptr01  =>  func1_bindc_ptr01

if (func1_bindc_ptr01().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr01  =>  func1_bindc_ptr02

if (func1_bindc_ptr01().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr01  =>  func1_bindc_ptr03

if (func1_bindc_ptr01().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr01  =>  func1_bindc_ptr04

if (func1_bindc_ptr01().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr01  =>  func1_bindc_ptr05

if (func1_bindc_ptr01().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr01  =>  func1_bindc_ptr06

if (func1_bindc_ptr01().ne.func1_bindc_ptr06()) print *,'error'

func1_bindc_ptr01  =>  func_yobi_ptr01

func_yobi_ptr02    =>  func1_bindc_ptr02

func1_bindc_ptr02  =>  func1_bindc_ptr01

if (func1_bindc_ptr02().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr02  =>  func1_bindc_ptr02

if (func1_bindc_ptr02().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr02  =>  func1_bindc_ptr03

if (func1_bindc_ptr02().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr02  =>  func1_bindc_ptr04

if (func1_bindc_ptr02().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr02  =>  func1_bindc_ptr05

if (func1_bindc_ptr02().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr02  =>  func1_bindc_ptr06
if (func1_bindc_ptr02().ne.func1_bindc_ptr06()) print *,'error'

func1_bindc_ptr02  =>  func_yobi_ptr02

func_yobi_ptr03    =>  func1_bindc_ptr03

func1_bindc_ptr03  =>  func1_bindc_ptr01

if (func1_bindc_ptr03().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr03  =>  func1_bindc_ptr02

if (func1_bindc_ptr03().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr03  =>  func1_bindc_ptr03

if (func1_bindc_ptr03().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr03  =>  func1_bindc_ptr04

if (func1_bindc_ptr03().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr03  =>  func1_bindc_ptr05

if (func1_bindc_ptr03().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr03  =>  func1_bindc_ptr06

if (func1_bindc_ptr03().ne.func1_bindc_ptr06()) print *,'error'

func1_bindc_ptr03  =>  func_yobi_ptr03

func_yobi_ptr04    =>  func1_bindc_ptr04

func1_bindc_ptr04  =>  func1_bindc_ptr01

if (func1_bindc_ptr04().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr04  =>  func1_bindc_ptr02

if (func1_bindc_ptr04().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr04  =>  func1_bindc_ptr03

if (func1_bindc_ptr04().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr04  =>  func1_bindc_ptr04

if (func1_bindc_ptr04().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr04  =>  func1_bindc_ptr05

if (func1_bindc_ptr04().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr04  =>  func1_bindc_ptr06

if (func1_bindc_ptr04().ne.func1_bindc_ptr06()) print *,'error'

func1_bindc_ptr04  =>  func_yobi_ptr04

func_yobi_ptr05    =>  func1_bindc_ptr05

func1_bindc_ptr05  =>  func1_bindc_ptr01

if (func1_bindc_ptr05().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr05  =>  func1_bindc_ptr02

if (func1_bindc_ptr05().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr05  =>  func1_bindc_ptr03

if (func1_bindc_ptr05().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr05  =>  func1_bindc_ptr04

if (func1_bindc_ptr05().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr05  =>  func1_bindc_ptr05

if (func1_bindc_ptr05().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr05  =>  func1_bindc_ptr06

if (func1_bindc_ptr05().ne.func1_bindc_ptr06()) print *,'error'

func1_bindc_ptr05  =>  func_yobi_ptr05

func_yobi_ptr06    =>  func1_bindc_ptr06

func1_bindc_ptr06  =>  func1_bindc_ptr01

if (func1_bindc_ptr06().ne.func1_bindc_ptr01()) print *,'error'

func1_bindc_ptr06  =>  func1_bindc_ptr02

if (func1_bindc_ptr06().ne.func1_bindc_ptr02()) print *,'error'

func1_bindc_ptr06  =>  func1_bindc_ptr03

if (func1_bindc_ptr06().ne.func1_bindc_ptr03()) print *,'error'

func1_bindc_ptr06  =>  func1_bindc_ptr04

if (func1_bindc_ptr06().ne.func1_bindc_ptr04()) print *,'error'

func1_bindc_ptr06  =>  func1_bindc_ptr05

if (func1_bindc_ptr06().ne.func1_bindc_ptr05()) print *,'error'

func1_bindc_ptr06  =>  func1_bindc_ptr06

if (func1_bindc_ptr06().ne.func1_bindc_ptr06()) print *,'error'

sub1_bindc_ptr01   =>  sub01

call sub1_bindc_ptr01(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub02

call sub1_bindc_ptr01(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  m01s01

call sub1_bindc_ptr01(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  m01s02

call sub1_bindc_ptr01(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  isub01

call sub1_bindc_ptr01(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  isub02

call sub1_bindc_ptr01(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub01

call sub1_bindc_ptr02(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub02

call sub1_bindc_ptr02(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  m01s01

call sub1_bindc_ptr02(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  m01s02

call sub1_bindc_ptr02(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  isub01

call sub1_bindc_ptr02(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  isub02

call sub1_bindc_ptr02(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub01

call sub1_bindc_ptr03(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub02

call sub1_bindc_ptr03(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  m01s01

call sub1_bindc_ptr03(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  m01s02

call sub1_bindc_ptr03(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  isub01

call sub1_bindc_ptr03(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  isub02

call sub1_bindc_ptr03(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub01

call sub1_bindc_ptr04(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub02

call sub1_bindc_ptr04(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  m01s01

call sub1_bindc_ptr04(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  m01s02

call sub1_bindc_ptr04(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  isub01

call sub1_bindc_ptr04(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  isub02

call sub1_bindc_ptr04(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub01

call sub1_bindc_ptr05(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub02

call sub1_bindc_ptr05(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  m01s01

call sub1_bindc_ptr05(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  m01s02

call sub1_bindc_ptr05(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  isub01

call sub1_bindc_ptr05(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  isub02

call sub1_bindc_ptr05(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub01

call sub1_bindc_ptr06(i4a)
call sub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub02

call sub1_bindc_ptr06(i4a)
call sub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  m01s01

call sub1_bindc_ptr06(i4a)
call m01s01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  m01s02

call sub1_bindc_ptr06(i4a)
call m01s02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  isub01

call sub1_bindc_ptr06(i4a)
call isub01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  isub02

call sub1_bindc_ptr06(i4a)
call isub02(i4b)

if (i4a.ne.i4b) print *,'error'

sub_yobi_ptr01     =>  sub1_bindc_ptr01

sub1_bindc_ptr01   =>  sub1_bindc_ptr01

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub1_bindc_ptr02

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub1_bindc_ptr03

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub1_bindc_ptr04

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub1_bindc_ptr05

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub1_bindc_ptr06

call sub1_bindc_ptr01(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr01   =>  sub_yobi_ptr01

sub_yobi_ptr02     =>  sub1_bindc_ptr02

sub1_bindc_ptr02   =>  sub1_bindc_ptr01

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub1_bindc_ptr02

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub1_bindc_ptr03

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub1_bindc_ptr04

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub1_bindc_ptr05

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub1_bindc_ptr06

call sub1_bindc_ptr02(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr02   =>  sub_yobi_ptr02

sub_yobi_ptr03     =>  sub1_bindc_ptr03

sub1_bindc_ptr03   =>  sub1_bindc_ptr01

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub1_bindc_ptr02

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub1_bindc_ptr03

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub1_bindc_ptr04

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub1_bindc_ptr05

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub1_bindc_ptr06

call sub1_bindc_ptr03(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr03   =>  sub_yobi_ptr03

sub_yobi_ptr04     =>  sub1_bindc_ptr04

sub1_bindc_ptr04   =>  sub1_bindc_ptr01

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub1_bindc_ptr02

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub1_bindc_ptr03

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub1_bindc_ptr04

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub1_bindc_ptr05

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub1_bindc_ptr06

call sub1_bindc_ptr04(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr04   =>  sub_yobi_ptr04

sub_yobi_ptr05     =>  sub1_bindc_ptr05

sub1_bindc_ptr05   =>  sub1_bindc_ptr01

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub1_bindc_ptr02

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub1_bindc_ptr03

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub1_bindc_ptr04

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub1_bindc_ptr05

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub1_bindc_ptr06

call sub1_bindc_ptr05(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr05   =>  sub_yobi_ptr05

sub_yobi_ptr06     =>  sub1_bindc_ptr06

sub1_bindc_ptr06   =>  sub1_bindc_ptr01

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr01(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub1_bindc_ptr02

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr02(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub1_bindc_ptr03

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr03(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub1_bindc_ptr04

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr04(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub1_bindc_ptr05

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr05(i4b)

if (i4a.ne.i4b) print *,'error'

sub1_bindc_ptr06   =>  sub1_bindc_ptr06

call sub1_bindc_ptr06(i4a)
call sub1_bindc_ptr06(i4b)

if (i4a.ne.i4b) print *,'error'

print *,'pass'

end

function       func01()   result(rst1)   bind(c)
 integer :: rst1
 rst1 = 16
end function

function       func02()   result(rst2)   bind(c,  name  =  'bind_prc01')
 integer :: rst2
 rst2 = 32
end function

subroutine     sub01(i4)                 bind(c)
 integer :: i4
 i4   = 64
end subroutine

subroutine     sub02(i4)                 bind(c,  name  =  'bind_prc02')
 integer :: i4
 i4   = 128
end subroutine

function       ifunc01()   result(rst1)  bind(c)
 integer :: rst1
 rst1 = 256
end function

function       ifunc02()   result(rst2)  bind(c,  name  =  'bind_prc05')
 integer :: rst2
 rst2 = 512
end function

subroutine     isub01(i4)                bind(c)
 integer :: i4
 i4   = 1024
end subroutine

subroutine     isub02(i4)                bind(c,  name  =  'bind_prc06')
 integer :: i4
 i4   = 2048
end subroutine

function       out_func01()   result(rst1)  bind(c)
 integer :: rst1
 rst1 = 4096
end function

function       out_func02()   result(rst2)  bind(c,  name  =  'bind_prc01A')
 integer :: rst2
 rst2 = 8192
end function

function       out_func03()   result(rst3)  bind(c)
 integer :: rst3
 rst3 = 16384
end function

function       out_func04()   result(rst4)  bind(c,  name  =  'bind_prc03A')
 integer :: rst4
 rst4 = 32768
end function

function       out_func05()   result(rst5)  bind(c)
 integer :: rst5
 rst5 = 65536
end function

function       out_func06()   result(rst6)  bind(c,  name  =  'bind_prc05A')
 integer :: rst6
 rst6 = 131072
end function

subroutine     out_sub01(i4)                bind(c)
 integer :: i4
 i4   = 262144
end subroutine

subroutine     out_sub02(i4)                bind(c,  name  =  'bind_prc02A')
 integer :: i4
 i4   = 524288
end subroutine

subroutine     out_sub03(i4)                bind(c)
 integer :: i4
 i4   = 1048576
end subroutine

subroutine     out_sub04(i4)                bind(c,  name  =  'bind_prc04A')
 integer :: i4
 i4   = 2097152
end subroutine

subroutine     out_sub05(i4)                bind(c)
 integer :: i4
 i4   = 4194304
end subroutine

subroutine     out_sub06(i4)                bind(c,  name  =  'bind_prc06A')
 integer :: i4
 i4   = 8388608
end subroutine
