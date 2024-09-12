module m
contains
  subroutine sub(a_arg,b_arg,c_arg)
     character*(2), dimension(:),target:: a_arg
     character*(2), dimension(:),target:: b_arg,c_arg
     a_arg = b_arg // c_arg
  end subroutine sub
  subroutine sub1(a_arg,b_arg,c_arg)
     character*(2), dimension(:),target:: a_arg
     character*(2), dimension(:),target:: b_arg,c_arg
     a_arg = b_arg(:)(1:1) // c_arg(:)(2:2)
  end subroutine

end module m

program main
  use m
  character(2),pointer      :: a_pointer(:) 
  allocate (a_pointer(4))
  a_pointer = (/"a1","b2","c3","d4"/)
  call sub (a_pointer(2:3),a_pointer(1:2),a_pointer(3:4))
  if (any(a_pointer/=(/"a1","a1","b2","d4"/)))print *,'error'

  a_pointer = (/"a1","b2","c3","d4"/)
  call sub1 (a_pointer(2:3),a_pointer(1:2),a_pointer(3:4))
  if (any(a_pointer/=(/"a1","a3","b4","d4"/)))print *,'error1'

  print *,'pass'
end program main
