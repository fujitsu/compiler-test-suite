module mod
  integer :: iii
end module

  use mod
  call sub(iii)
  print *,'pass'
  contains
    subroutine sub(p1)
      integer,intent(inout) :: p1
      p1 = 1
    end subroutine
end
