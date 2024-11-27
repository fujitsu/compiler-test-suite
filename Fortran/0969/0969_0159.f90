module mod01
 type mty01
  integer :: ii_01
 end type
 type mty02
  real    :: rr_01
 end type
end module

use mod01

interface
 function ifunc01() result(irst01)
  use mod01
  implicit type(mty01)(i)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function

 function ifunc02() result(irst02)
  implicit real(i)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst02
 end function

 subroutine isub01()
 end subroutine
end interface

type ty01
 procedure(cfunc01), pointer, nopass :: pcfuncp01
end type

type ty02
 procedure(cfunc03), pointer, nopass :: pcfuncp02
end type

type (ty01) :: tt01
type (ty02) :: tt02

call csub01(ifunc01)
call csub01(tt01%pcfuncp01)
call csub01(cfunc02())

call csub02(ifunc01)
call csub02(tt01%pcfuncp01)
call csub02(cfunc02())

call csub03(ifunc02)
call csub03(tt02%pcfuncp02)
call csub03(cfunc04())

call csub04(ifunc02)
call csub04(tt02%pcfuncp02)
call csub04(cfunc04())

contains

 function cfunc01() result(crst01)
  implicit type(mty02)(c)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: crst01
  crst01 => isub01
 end function

 function cfunc02() result(crst02)
  procedure(ifunc01), pointer :: crst02
  crst02 => null()
 end function

 function cfunc03() result(crst02)
  implicit integer(c)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: crst02
  crst02 => null()
 end function

 function cfunc04() result(crst04)
  procedure(ifunc02), pointer :: crst04
  crst04 => null()
 end function

 subroutine csub01(cs01_arg01)
  implicit type(mty02)(c)
  procedure(cfunc01) :: cs01_arg01
 end subroutine

 subroutine csub02(cs02_df01)
  implicit type(mty02)(c)
  interface
   function cs02_df01() result(cs02_drst01)
    use mod01
    implicit type(mty02)(c)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: cs02_drst01
   end function
  end interface
 end subroutine

 subroutine csub03(cs03_arg01)
  implicit integer(c)
  procedure(cfunc03) :: cs03_arg01
 end subroutine

 subroutine csub04(cs04_df01)
  implicit integer(c)
  interface
   function cs04_df01() result(cs04_drst01)
    use mod01
    implicit integer(c)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: cs04_drst01
   end function
  end interface
 end subroutine

end

function ifunc01() result(irst01)
 use mod01
 implicit type(mty01)(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

function ifunc02() result(irst02)
 implicit real(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst02
 irst02 => null()
end function

subroutine isub01()
end subroutine
