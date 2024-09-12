subroutine sub ()
  type tp
     integer :: s1 = 100
  end type tp
  type(tp):: str = tp(55)
  
  print *, str%s1
  
end subroutine sub

program main
  call sub
  call sub
end program main
