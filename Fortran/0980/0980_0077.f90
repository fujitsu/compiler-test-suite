module mod01
  implicit none
  interface
    subroutine sub01(p_chr01)
      value :: p_chr01
      character(*) :: p_chr01
    end subroutine
  end interface
end module

end program
