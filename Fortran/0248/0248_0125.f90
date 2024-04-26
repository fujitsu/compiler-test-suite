interface
subroutine sub(arr)
  integer , optional :: arr(:)
end subroutine
end interface

integer, pointer :: ptr(:)
call sub(NULL())
call sub(NULL(ptr))
call sub()
end

subroutine sub(arr)
  integer , optional :: arr(:)
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine
