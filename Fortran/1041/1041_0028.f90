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
  external :: ext_sub01

  call ext_call(ext_sub01)

  print *,"pass"
end program


subroutine ext_call(prog)
  use mod_check
  type(data) :: dat
  external :: prog

  do i=1,1
    call prog(dat%arr)
  end do
  if (ext_check(dat%arr)) stop "NG FUN"

end subroutine

subroutine ext_sub01(in)
  integer, intent(out) :: in(10)
  integer::cnt
  do cnt=1,10
    in(cnt) = cnt
  end do

end subroutine
