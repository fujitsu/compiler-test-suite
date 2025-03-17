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
  subroutine ext_sub01(Parr)
    integer,intent(out) :: Parr(10)

    do i=1,10
      Parr(i) = i
    end do
    return
  entry ext_ent_sub01(Parr)
    do i=1,10
      Parr(i) = i
    end do
    return
  end subroutine

  function ext_fun01(Pi)
    integer,intent(in) :: pi

    ext_fun01 = Pi
    return
  entry ext_ent_fun01(Pi)
    ext_fun01 = Pi
    return
  end function

  subroutine call_sub()
    use mod_check

    type(data) :: dat

    do cnt=1,1
    call ext_sub01(dat%arr)
    end do
    if (ext_check(dat%arr)) stop "NG 01"
    do i=1,10
      dat%arr(i)=ext_fun01(i)
    end do
    if (ext_check(dat%arr)) stop "NG 02"

    call sub

    print *,"pass"
  contains
    subroutine sub
      do cnt=1,1
        call ext_sub01(dat%arr)
      end do
      if (ext_check(dat%arr)) stop "NG 03"
      do i=1,10
        dat%arr(i)=ext_fun01(i)
      end do
      if (ext_check(dat%arr)) stop "NG 04"
    end subroutine
  end subroutine
end module

program main
  use mod
  call call_sub
end
