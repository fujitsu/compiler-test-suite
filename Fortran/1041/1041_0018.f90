module mod
  type data
    integer arr(10)
  end type
  real(kind=8) :: r8
  real(kind=16) :: r16
contains
  subroutine ext_sub01()
    type(data) :: dat

    do i=0,9
      r8 = i + 0.67
      dat%arr(i + 1) = dnint(r8)
    end do
    if (ext_check(dat%arr)) stop "NG 02"

    do i=0,9
      r16 = i + 0.67
      dat%arr(i + 1) = anint(r16)
    end do
    if (ext_check(dat%arr)) stop "NG 03"
  end subroutine

  subroutine ext_sub02()
    type(data) :: dat

    do i=0,9
      r8 = i + 1.67
      dat%arr(i + 1) = dnint(r8)
    end do
    if (ext_check(dat%arr)) stop "NG 05"

    do i=0,9
      r16 = i + 1.67
      dat%arr(i + 1) = anint(r16)
    end do
    if (ext_check(dat%arr)) stop "NG 06"
  contains
    function dnint(Pr8)
      real(kind=8),intent(in) :: Pr8
      real(kind=8) :: dnint

      dnint = Pr8
    end function dnint
    function anint(Pr16)
      real(kind=16),intent(in) :: Pr16
      real(kind=16) :: anint

      anint = Pr16
    end function anint
  end subroutine

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
  use mod

  call ext_sub01
  call ext_sub02
 
  print *,"pass"
end
