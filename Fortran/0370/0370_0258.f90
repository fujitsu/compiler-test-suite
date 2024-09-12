subroutine sub ()
  integer(kind=8),target,save :: t1 = 5
  type tp
     integer(kind=8),pointer :: p1 => t1
  end type tp
  type(tp) str
  
  print *, str%p1
end subroutine sub

program main
  call sub
  call sub
end program main
