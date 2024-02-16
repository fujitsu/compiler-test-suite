  implicit none
  type :: ty01
   integer :: int01(10)
  end type
  type(ty01) :: strct01
  integer,allocatable :: int_alo01(:)

  strct01%int01 = 1
  allocate(int_alo01(3),source=strct01%int01(2))
  int_alo01 = strct01%int01(2)
  print *,'pass'
end
