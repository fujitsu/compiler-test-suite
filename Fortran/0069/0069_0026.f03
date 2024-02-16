  implicit none
  type :: ty01
   integer :: int01
   integer :: int02
  end type
  type(ty01),allocatable :: strct_alo01(:)

  allocate(strct_alo01(10),source=ty01(1,2))
  strct_alo01 = ty01(1,2)
  print *,'pass'
end
