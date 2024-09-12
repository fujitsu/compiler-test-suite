subroutine sub ()
  integer(kind=8),target,save :: t1 = 5
  integer(kind=8),target,save :: t2 = 10
  integer(kind=8),pointer :: p1 => t1

  print *, p1
end subroutine sub

program main
  call sub
  call sub
end program main
