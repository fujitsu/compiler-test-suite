PROGRAM MAIN
class(*), pointer :: ptr_1
class(*), pointer :: ptr_2(:)

allocate(integer :: ptr_2(20))

allocate(ptr_1, mold = ptr_2(2))

if(ASSOCIATED(ptr_1)) then
 select type(ptr_1)
 type is(integer)
  print*,'pass'
 end select
else
  print*,102
endif

END
