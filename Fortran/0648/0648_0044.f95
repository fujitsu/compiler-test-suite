  program main

    print *," *** pass *** "

    contains

  function ifun01() result(res)
    integer,allocatable :: res(:)
  end function ifun01

  function ifun02() result(res)
    integer :: res
    allocatable :: res(:)
  end function ifun02

  function ifun03() result(res)
    allocatable :: res(:)
    integer :: res
  end function ifun03

  integer function ifun04() result(res)
    allocatable :: res(:)
  end function ifun04

  end program main

  function efun01() result(res)
    integer,allocatable :: res(:)
  end function efun01

  function efun02() result(res)
    integer :: res
    allocatable :: res(:)
  end function efun02

  function efun03() result(res)
    allocatable :: res(:)
    integer :: res
  end function efun03

  integer function efun04() result(res)
    allocatable :: res(:)
  end function efun04

  function efun05() result(fres)
    entry eent05() result(res)
    integer,allocatable :: res(:)
    integer,allocatable :: fres(:)
  end function efun05

  function efun06() result(fres)
    entry eent06() result(res)
    integer :: res
    allocatable :: res(:)
    integer,allocatable :: fres(:)
  end function efun06

  function efun07() result(fres)
    entry eent07() result(res)
    allocatable :: res(:)
    integer :: res
    integer,allocatable :: fres(:)
  end function efun07

  integer function efun08() result(fres)
    entry eent08() result(res)
    allocatable :: res(:)
    allocatable :: fres(:)
    integer :: res
  end function efun08

  function efun09() result(fres)
    integer,allocatable :: res(:)
    integer,allocatable :: fres(:)
    entry eent09() result(res)
  end function efun09

  function efun10() result(fres)
    integer :: res
    allocatable :: res(:)
    integer,allocatable :: fres(:)
    entry eent10() result(res)
  end function efun10

  function efun11() result(fres)
    allocatable :: res(:)
    integer :: res
    integer,allocatable :: fres(:)
    entry eent11() result(res)
  end function efun11

  integer function efun12() result(fres)
    allocatable :: res(:)
    allocatable :: fres(:)
    entry eent12() result(res)
    integer :: res
  end function efun12

  module mod
  contains

  function mfun01() result(res)
    integer,allocatable :: res(:)
  end function mfun01

  function mfun02() result(res)
    integer :: res
    allocatable :: res(:)
  end function mfun02

  function mfun03() result(res)
    allocatable :: res(:)
    integer :: res
  end function mfun03

  integer function mfun04() result(res)
    allocatable :: res(:)
  end function mfun04

  function mfun05() result(fres)
    entry ment05() result(res)
    integer,allocatable :: res(:)
    integer,allocatable :: fres(:)
  end function mfun05

  function mfun06() result(fres)
    entry ment06() result(res)
    integer :: res
    allocatable :: res(:)
    integer,allocatable :: fres(:)
  end function mfun06

  function mfun07() result(fres)
    entry ment07() result(res)
    allocatable :: res(:)
    integer :: res
    integer,allocatable :: fres(:)
  end function mfun07

  integer function mfun08() result(fres)
    entry ment08() result(res)
    allocatable :: res(:)
    allocatable :: fres(:)
    integer :: res
  end function mfun08

  function mfun09() result(fres)
    integer,allocatable :: res(:)
    integer,allocatable :: fres(:)
    entry ment09() result(res)
  end function mfun09

  function mfun10() result(fres)
    integer :: res
    allocatable :: res(:)
    integer,allocatable :: fres(:)
    entry ment10() result(res)
  end function mfun10

  function mfun11() result(fres)
    allocatable :: res(:)
    integer :: res 
    integer,allocatable :: fres(:)
    entry ment11() result(res)
  end function mfun11

  integer function mfun12() result(fres)
    allocatable :: res(:)
    allocatable :: fres(:)
    entry ment12() result(res)
    integer :: res
  end function mfun12

  end module
