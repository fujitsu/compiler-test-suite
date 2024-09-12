  implicit none
  type ty01
    character(len=10),allocatable :: char01(:)
  end type
  type(ty01) :: struct01

  allocate(struct01%char01(3))

  write(struct01%char01,*) "1"
print *,'pass'

end
