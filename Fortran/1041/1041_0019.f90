module mod
  type data
    integer arr(10)
  end type
  real(kind=8) :: r8
  real(kind=16) :: r16
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
  use mod

  do cnt=1,1
    call sub01(0)
    call sub02
  end do
 
  print *,"pass"
contains
  recursive subroutine sub01(pint)
    use mod
    integer ,intent(in) :: pint
    type(data) :: dat
    if (pint == 0) then
      call sub01(1)
    else
      do i=1,10
        dat%arr(i) = i
      end do
      if (ext_check(dat%arr)) stop "NG 01"
    end if
  end subroutine
end

recursive subroutine sub01(pint)
    use mod
    integer ,intent(in) :: pint
    type(data) :: dat
    if (pint == 0) then
      do cnt=1,1
        call sub01(1)
      end do
    else
      do i=1,10
        dat%arr(i) = i
      end do
      if (ext_check(dat%arr)) stop "NG 02"
    end if
end subroutine
subroutine sub02
  do cnt=1,1
    call sub01(0)
  end do
end subroutine
