integer, allocatable :: ptr(:)
call sub(NULL(ptr))
call sub()

contains
subroutine sub(arr)
  integer , optional :: arr(*)
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine

end
