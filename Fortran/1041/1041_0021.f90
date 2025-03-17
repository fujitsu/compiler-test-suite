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
module m
contains
  subroutine a
    use mod_check
    type(data) :: dat
    do i=1,10
      dat%arr(i) = i
    end do
    if (ext_check(dat%arr)) stop "NG 01"
    return
  entry b
    do i=1,10
      dat%arr(i) = i
    end do
    if (ext_check(dat%arr)) stop "NG 02"
  end subroutine
  subroutine c
    use mod_check

    do cnt=1,1
      call b
      call d
    end do
  contains
    subroutine d
      type(data) :: dat
      do i=1,10
        dat%arr(i) = i
      end do
      if (ext_check(dat%arr)) stop "NG 03"
    end subroutine
  end subroutine
end module

program p
  use mod_check
  use m

  do cnt=1,1
    call a
    call b
    call e
    call f
    call g
  end do

  print *,"pass"
contains
  subroutine e
    type(data) :: dat
    do i=1,10
      dat%arr(i) = i
    end do
    if (ext_check(dat%arr)) stop "NG 04"
  end subroutine
end

subroutine f
  use mod_check
  type(data) :: dat
  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 05"
  return
entry g
  do cnt=1,1
    call h
  end do
contains
  subroutine h
    type(data) :: dat
    do i=1,10
      dat%arr(i) = i
    end do
    if (ext_check(dat%arr)) stop "NG 06"
  end subroutine
end subroutine
