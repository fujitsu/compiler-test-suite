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

program main
  use mod_check
  type(data) :: dat
  integer cnt

  do cnt=1,1
    call ext_sub01
  end do
  do i=1,10
    dat%arr(i)=ext_fun01(i)
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  do cnt=1,1
    call ext_sub02
    call ext_sub03
  end do

  do cnt=1,10
    dat%arr(cnt)=ext_fun02(cnt)
  end do
  if (ext_check(dat%arr)) stop "NG 02"

  print *,"pass"
end

subroutine ext_sub01
  use mod_check
  type(data) :: dat
  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 03"
end
subroutine ext_sub02
  use mod_check
  type(data) :: dat
  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 04"
end
subroutine ext_sub03
  use mod_check
  type(data) :: dat
  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 05"
end

function ext_fun01(i)
  ext_fun01 = i
end
function ext_fun02(i)
  ext_fun02 = i
end
