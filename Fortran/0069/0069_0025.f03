  implicit none
  type :: ty01
   integer :: int01
   integer :: int02
  end type
  type(ty01),allocatable :: strct_alo01(:)
  type(ty01) :: strct01(10)

  strct01 = ty01(1,2)
  allocate(strct_alo01(10),source=strct01(3))
  strct_alo01 = strct01(3)
  print *,'pass'
end
