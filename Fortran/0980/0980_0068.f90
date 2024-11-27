module mod01
  implicit none
contains
  subroutine sub00()
  contains
    subroutine sub01(p_chr01)
      value :: p_chr01
      character(len=*) :: p_chr01
      p_chr01 = "char"
    end subroutine
  end subroutine
end module
end program
