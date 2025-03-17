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

  do cnt=1,1
    call sub01
  end do
  do i=1,10
    dat%arr(i)=fun01(i)
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  call sub01
  call sub01
  do i=1,10
    dat%arr(i)=fun02(i)
  end do
  if (ext_check(dat%arr)) stop "NG 01"
  do i=1,10
    dat%arr(i)=fun03(i)
  end do
  if (ext_check(dat%arr)) stop "NG 01"
  do cnt=1,1
    call sub02
  end do

  print *,"pass"
  contains
  subroutine sub01
    integer arr(10)

    do i=1,10
      arr(i)=i
    end do
    if (ext_check(arr)) stop "NG 01"
  end subroutine
  subroutine sub02
    integer arr(10)

    do i=1,10
      arr(i)=i
    end do
    if (ext_check(arr)) stop "NG 01"
  end subroutine
  function fun01(i)
    fun01 = i
  end function
  function fun02(i)
    fun02 = i
  end function
  function fun03(i)
    fun03 = i
  end function
end
