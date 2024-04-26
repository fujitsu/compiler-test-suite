type tt
 integer, pointer :: ptr(:)
end type

type(tt) :: obj
call sub(NULL(obj%ptr))

contains
subroutine sub(arr)
  integer , optional :: arr(4)
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine

end
