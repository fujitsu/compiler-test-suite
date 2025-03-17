module mod_check
  type data
    integer arr(10)
  end type
contains
  function ext_check(Parr)
    integer ,intent(in) :: Parr(10)
    logical :: ext_check
    logical :: ret
    if (all(Parr == (/1,2,3,4,5,6,7,8,9,10/))) then
      ret = .false.
    else
      ret = .true.
    end if
    ext_check = ret
  end function
end module

module mod
  interface real_int_fun
    function ext_real_fun01(p1) result(ret)
      implicit none
      real, intent(in) :: p1
      integer :: ret
    end function ext_real_fun01
    function ext_int_fun02(p1) result(ret)
      implicit none
      integer, intent(in) :: p1
      integer :: ret
    end function ext_int_fun02
  end interface
end module
program main
  use mod_check
  use mod
  type(data) :: dat

  integer :: cnt_int
  integer :: cnt_real
  do cnt_int=1,10
    dat%arr(cnt_int) = real_int_fun(cnt_int)
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  do cnt_real=1,10
    dat%arr(cnt_real) = real_int_fun(cnt_real)
  end do
  if (ext_check(dat%arr)) stop "NG 02"

  print *,"pass"
end program

function ext_real_fun01(in)
  implicit none
  real, intent(in) :: in
  integer :: ext_real_fun01

  ext_real_fun01 = in
end function
function ext_int_fun02(in)
  implicit none
  integer, intent(in) :: in
  integer :: ext_int_fun02

  ext_int_fun02 = in
end function
