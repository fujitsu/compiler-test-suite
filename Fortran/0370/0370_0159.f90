program main
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1 => t1

  call sub(p1)
  
  print *, t1
  print *, p1
contains
  subroutine sub (p1)
    integer(kind=8),pointer :: p1
    print *, p1
  end subroutine sub
end program
