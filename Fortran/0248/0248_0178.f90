integer, allocatable :: ptr(:)
call sub(2,NULL())
call sub(2,NULL(ptr))
call sub(2)

contains
subroutine sub(d,arr)
  integer , optional :: arr(:)
  integer::d
  if(present(arr) .eqv. .false.) print*,'pass',d
end subroutine

end
