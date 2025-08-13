module dm
  type :: i_t
    integer, dimension(2) :: da = 1
  end type i_t
  type :: bt
    type (n_t), pointer :: Next_NP
  end type bt
  type :: n_t
    integer :: Level = 1, N_Keys = 0
    type(i_t), dimension(4) :: i
  end type n_t
  type:: an_t
    type (i_t) :: i
    type (n_t), pointer :: Next_NP
  end type an_t
contains
  subroutine Look_Up
    type (an_t) :: arrier
    type (n_t), pointer :: emp_NP
  end subroutine Look_Up
  subroutine rint( )
          write (61, "(tr1, i3)", advance = "NO") 1
  end subroutine rint
end module dm

  program d
    use dm
    call rint( )
    print *,'pass'
  end program d
