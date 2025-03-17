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
  integer fun01(10)
  integer fun02(10)

  do i=1,10
    fun01(i)=i
    dat%arr(i) = fun01(i)
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  do i=1,10
    fun02(i)=i
    dat%arr(i) = fun02(i)
  end do
  if (ext_check(dat%arr)) stop "NG 02"

  print *, "pass"
end program

