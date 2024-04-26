PROGRAM MAIN
class(*), allocatable :: ptr_1
class(*), pointer     :: ptr_2
allocate(integer :: ptr_2)

if(ALLOCATED(ptr_1))   print*,101

allocate(ptr_1, mold = ptr_2)

if(ALLOCATED(ptr_1)) then
 select type(ptr_1)
 type is(integer)
  print*,'pass1/2'
 end select
else
  print*,'NOT 1ALLOCATED YET'
endif

deallocate(ptr_2,ptr_1)
allocate(character(len=2)::ptr_2)

allocate(ptr_1, mold = ptr_2)

if(ALLOCATED(ptr_1)) then
 select type(ptr_1)
 type is(character(*))
  if(len(ptr_1) == 2) print*,'pass2/2'
 end select
else
  print*,'NOT ALLOCATED YET'
endif
END
