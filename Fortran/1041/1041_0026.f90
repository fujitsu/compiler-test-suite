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
contains
subroutine test_mod
  use mod_check
  type(data) :: dat

  do cnt=1,1
    call sub01
    call sub02
  end do

contains
  subroutine sub01
    do i=1,10
      dat%arr(i) = i
    end do
    if (ext_check(dat%arr)) stop "NG 01"
  end subroutine
end subroutine
subroutine sub02
  use mod_check
  type(data) :: dat

  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 02"
end subroutine
end module

program main
  use mod_check
  use mod

  do cnt=1,1
    call test_mod
    call ext_sub01
    call ext_sub02
  end do

  print *, "pass"
end program

subroutine ext_sub01
  use mod_check
  type(data) :: dat

  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 03"
end subroutine
subroutine ext_sub02
  use mod_check
  type(data) :: dat

  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 04"
end subroutine
