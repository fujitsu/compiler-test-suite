subroutine sub ()
  integer(kind=8),pointer :: p1
  integer(kind=8),target,save :: t1

  data p1 /t1/
  data t1 /5/
  
  print *, p1
end subroutine sub

program main
  call sub
  call sub
end program main
