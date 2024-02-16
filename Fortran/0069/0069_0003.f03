  implicit none
  type :: ty01
    character(100) :: chr01(3)
  end type
  type(ty01) :: struct01
  integer,allocatable :: a_int01

  allocate(a_int01,errmsg=struct01%chr01(2))
  print *,'pass'
end
