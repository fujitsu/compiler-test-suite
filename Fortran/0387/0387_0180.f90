interface
  subroutine sub(x)
    integer :: x
  end subroutine
end interface
procedure (), pointer :: p
  p => sub
  call p(1)
 print *,'pass'
 end

  subroutine sub(x)
    integer :: x
  end subroutine
