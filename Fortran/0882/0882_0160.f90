PROGRAM MAIN
class(*), pointer :: ptr_1=>NULL()
class(*), pointer :: ptr_2(:) => NULL()

allocate(integer :: ptr_2(20))

if(ASSOCIATED(ptr_1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(ptr_1, source = ptr_2(2))

if(ASSOCIATED(ptr_1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

END
