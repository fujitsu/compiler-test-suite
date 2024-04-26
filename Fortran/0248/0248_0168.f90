type tt
 integer, allocatable :: ptr
end type

type(tt) :: obj
call sub(NULL(obj%ptr))

contains
subroutine sub(arr)
  integer , optional :: arr
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine

end
