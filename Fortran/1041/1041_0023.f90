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
  integer :: cnt
  integer :: ret

  interface
    elemental subroutine ext_sub01(p1, p2)
      integer ,intent(in) :: p1
      integer ,intent(out) :: p2
    end subroutine
  end interface

  do cnt=1,10
    call ext_sub01(cnt,ret)
    dat%arr(cnt) = ret
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  do cnt=1,10
    call sub01(cnt,ret)
    dat%arr(cnt) = ret
  end do
  if (ext_check(dat%arr)) stop "NG 02"

  print *,"pass"

contains
  elemental subroutine sub01(p_in, p_out)
    integer ,intent(in) :: p_in
    integer ,intent(out) :: p_out

    p_out = p_in
  end subroutine
end

elemental subroutine ext_sub01(p_in, p_out)
  integer ,intent(in) :: p_in
  integer ,intent(out) :: p_out

  p_out = p_in
end subroutine
