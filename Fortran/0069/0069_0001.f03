  implicit none
  character(100) :: chr01(3)
  integer,allocatable :: a_int01

  allocate(a_int01,errmsg=chr01(2))
  print *,'pass'
end
