module m
contains
  subroutine sub(a_arg,b_arg,c_arg)
     integer, dimension(:),target:: a_arg
     integer, dimension(:),target:: b_arg,c_arg
     a_arg = b_arg + c_arg
  end subroutine sub
end module m

program main
  use m
  integer,dimension(50)::x
  integer,pointer      :: a_pointer(:) 
  allocate (a_pointer(10))
  a_pointer = (/1,2,3,4,5,6,7,8,9,10/)
  call isub(a_pointer)
 contains
 subroutine isub(a_pointer)
  integer, dimension(:),target:: a_pointer
  call sub (a_pointer(2:5:3),a_pointer(1:10:5),a_pointer(3:8:4))
  x(a_pointer(2))=1
  if (x(4)/=1) print *,'error'
  if (any(a_pointer/=(/1,4,3,4,13,6,7,8,9,10/)))print *,'error'
  print *,'pass'
 end subroutine
end program main
