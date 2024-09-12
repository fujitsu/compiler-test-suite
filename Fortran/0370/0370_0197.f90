
subroutine sub ()
  integer(kind=8),target,save :: t1
  integer(kind=8),pointer :: p1=>t1

  t1=5
  
  if (t1.ne.p1) print *,'err1'
  if (p1.ne.5) print *,'err2'
  print *, "OK"
end subroutine sub

program main
  call sub
end program main
