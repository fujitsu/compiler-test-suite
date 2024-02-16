  implicit none
  print *,'pass'
contains
  subroutine sub01(p_chr_pointer)
    character(*),pointer :: p_chr_pointer
    allocate(character(*) :: p_chr_pointer) !
  end subroutine
end
