PROGRAM MAIN
class(*), allocatable :: ptr_1
class(*), pointer     :: ptr_2
allocate(integer :: ptr_2)

if(ALLOCATED(ptr_1)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(ptr_1, source = ptr_2)

if(ALLOCATED(ptr_1)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

END

