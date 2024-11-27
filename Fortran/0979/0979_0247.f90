module mod01
implicit none
  integer,protected :: iii
contains
  subroutine sub01()
    iii = 111
    call sub02(iii)
  end subroutine
  subroutine sub02(p1)
    integer,intent(in) :: p1
    if (p1 /= iii) then
      print *,"err"
      stop
    end if
  end subroutine
end module

  use mod01
  call sub01()
  print *,'pass'
end
