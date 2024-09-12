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
  integer,dimension(4),target::ttt
  integer,pointer      :: a_pointer(:) 
  allocate (a_pointer(4))
  ttt = (/100000,2,300000,40/)
  a_pointer => ttt
  call isub(a_pointer)
 contains
 subroutine isub(a_pointer)
  integer, dimension(:),target:: a_pointer
  call sub (a_pointer(2:3),a_pointer(1:2),a_pointer(3:4))
  x(a_pointer(3))=1
  if (x(42)/=1) print *,'error'
  if (any(a_pointer/=(/100000,400000,42,40/)))print *,'error'
  print *,'pass'
  call test01()
  call test02()
 end subroutine
end program main

subroutine test01()
  integer,dimension(50)::x
  integer,dimension(4),target::ttt
  integer,pointer      :: a_pointer(:)
  allocate (a_pointer(4))
  ttt = (/100000,2,300000,40/)
  a_pointer => ttt
  call isub(a_pointer)
 contains
 subroutine isub(a_pointer)
  integer, dimension(:),target:: a_pointer
  call sub (a_pointer(2:3),a_pointer(1:2),a_pointer(3:4))
  x(a_pointer(3))=1
  if (x(42)/=1) print *,'error'
  if (any(a_pointer/=(/100000,400000,42,40/)))print *,'error'
  end subroutine
  subroutine sub(a_arg,b_arg,c_arg)
     integer, dimension(:),target:: a_arg
     integer, dimension(:),target:: b_arg,c_arg
     a_arg = b_arg + c_arg
  end subroutine sub
end 

  subroutine sub(a_arg,b_arg,c_arg)
     integer, dimension(:),target:: a_arg
     integer, dimension(:),target:: b_arg,c_arg
     a_arg = b_arg + c_arg
  end subroutine sub
subroutine test02()
 interface
  subroutine sub(a_arg,b_arg,c_arg)
     integer, dimension(:),target:: a_arg
     integer, dimension(:),target:: b_arg,c_arg
  end subroutine sub
 end interface
  integer,dimension(50)::x
  integer,dimension(4),target::ttt
  integer,pointer      :: a_pointer(:)
  allocate (a_pointer(4))
  ttt = (/100000,2,300000,40/)
  a_pointer => ttt
  call isub(a_pointer)
 contains
 subroutine isub(a_pointer)
  integer, dimension(:),target:: a_pointer
  call sub (a_pointer(2:3),a_pointer(1:2),a_pointer(3:4))
  x(a_pointer(3))=1
  if (x(42)/=1) print *,'error'
  if (any(a_pointer/=(/100000,400000,42,40/)))print *,'error'
 end subroutine
end 
