module mod
  integer, protected  :: iii
contains
  subroutine subm01()
    iii = 1
  end subroutine
end module

  use mod

  call subm01
  call sub01(iii)
  print *,'pass'
  contains
    subroutine sub01(p1)
      integer,intent(in) :: p1
      if (p1 == 1) then
      end if
    end subroutine
end
