module mod01
contains
  subroutine sub01(p_chr01)
    implicit none
    value :: p_chr01
    character(len=*) :: p_chr01
    p_chr01 = "char"
  end subroutine
end module
end program
