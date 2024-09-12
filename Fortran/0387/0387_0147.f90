function func01() result(rst01) bind(c, name = 'F1')
 integer :: rst01
 rst01 = 1
end function

function func02() result(rst02) bind(c, name = 'F2')
 integer :: rst02
 rst02 = 1
end function

function func03() result(rst03) bind(c, name = 'F3')
 integer :: rst03
 rst03 = 1
end function

function func04() result(rst04) bind(c, name = 'F4')
 integer :: rst04
 rst04 = 1
end function

subroutine sub01(arg01) bind(c, name = 'S1')
 integer :: arg01
 if (arg01.ne.1) print *,'argument not 1'
end subroutine

subroutine sub02(arg01) bind(c, name = 'S2')
 integer :: arg01
 if (arg01.ne.1) print *,'argument not 1'
end subroutine

subroutine sub03(arg01) bind(c, name = 'S3')
 integer :: arg01
 if (arg01.ne.1) print *,'argument not 1'
end subroutine

subroutine sub04(arg01) bind(c, name = 'S4')
 integer :: arg01
 if (arg01.ne.1) print *,'argument not 1'
end subroutine

module mod01
 interface
  function mifunc01() result(mirst01) bind(c, name = 'mif01')
   integer :: mirst01
  end function
  function mifunc02() result(mirst02) bind(c)
   integer :: mirst02
  end function
  subroutine misub01(miarg01) bind(c, name = 'mis01')
   integer :: miarg01
  end subroutine
  subroutine misub02(miarg01) bind(c)
   integer :: miarg01
  end subroutine
 end interface

 procedure(mifunc01), bind(c, name = 'F1') :: func01
 procedure(mifunc02), bind(c, name = 'F2') :: func02
 procedure(m1func01), bind(c, name = 'F3') :: func03
 procedure(m1func02), bind(c, name = 'F4') :: func04

 procedure(misub01),  bind(c, name = 'S1') :: sub01
 procedure(misub02),  bind(c, name = 'S2') :: sub02
 procedure(m1sub01),  bind(c, name = 'S3') :: sub03
 procedure(m1sub02),  bind(c, name = 'S4') :: sub04

 contains
  function m1func01() result(m1rst01) bind(c, name = 'm1f01')
   integer :: m1rst01
   m1rst01 = 1
  end function
  function m1func02() result(m1rst02) bind(c)
   integer :: m1rst02
   m1rst02 = 1
  end function
  subroutine m1sub01(m1arg01) bind(c, name = 'm1s01')
   integer :: m1arg01
  end subroutine
  subroutine m1sub02(m1arg01) bind(c)
   integer :: m1arg01
  end subroutine
end module

call csub01()
call csub02()

print *,'pass'

contains

 subroutine csub01()
  use mod01

  call sub01(func01())
  call sub01(func02())
  call sub01(func03())
  call sub01(func04())

  call sub02(func01())
  call sub02(func02())
  call sub02(func03())
  call sub02(func04())

  call sub03(func01())
  call sub03(func02())
  call sub03(func03())
  call sub03(func04())

  call sub04(func01())
  call sub04(func02())
  call sub04(func03())
  call sub04(func04())

 end subroutine

 subroutine csub02()
  use mod01, mf1 => func01
  use mod01, mf2 => func02
  use mod01, mf3 => func03
  use mod01, mf4 => func04
  use mod01, ms1 => sub01
  use mod01, ms2 => sub02
  use mod01, ms3 => sub03
  use mod01, ms4 => sub04

  call ms1(mf1())
  call ms1(mf2())
  call ms1(mf3())
  call ms1(mf4())

  call ms2(mf1())
  call ms2(mf2())
  call ms2(mf3())
  call ms2(mf4())

  call ms3(mf1())
  call ms3(mf2())
  call ms3(mf3())
  call ms3(mf4())

  call ms4(mf1())
  call ms4(mf2())
  call ms4(mf3())
  call ms4(mf4())

 end subroutine

end
