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
    call ext_sub01(dat%arr)
    if (ext_check(dat%arr)) stop "NG 01"
  end do

  do cnt=1,1
    call sub01(dat%arr)
    if (ext_check(dat%arr)) stop "NG 02"
  end do

  print *,"pass"

contains
  pure subroutine sub01(p_arr)
    integer ,intent(out) :: p_arr(10)
    do i=1,10
      p_arr(i) = i
    end do
  end subroutine
end

pure subroutine ext_sub01(p_arr)
  integer ,intent(out) :: p_arr(10)
  do i=1,10
    p_arr(i) = i
  end do
end subroutine
