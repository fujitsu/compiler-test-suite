subroutine sub ()
  integer :: ary(3) = (/1,2,3/)
  
  print *, ary
end subroutine sub

program main
  call sub
  call sub
end program main
