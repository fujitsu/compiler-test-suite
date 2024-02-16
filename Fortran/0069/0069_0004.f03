  implicit none
  character(100) :: chr01
  integer,allocatable :: a_int01

  allocate(a_int01)
  deallocate(a_int01,errmsg=chr01)
  print *,'pass'
end
