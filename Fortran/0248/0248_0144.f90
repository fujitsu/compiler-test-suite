integer, pointer :: ptr(:)
call sub(arr=NULL())
call sub(NULL(ptr))
call sub()
call sub(NULL(ptr))
print*,'pass'

contains
subroutine sub(arr)
  integer , optional :: arr(3)
  if(present(arr) .neqv. .false.) print*,201
end subroutine

end
