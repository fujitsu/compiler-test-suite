interface
subroutine sub(arr,d)
  integer , optional :: arr(:,:),d
end subroutine
end interface

integer, pointer :: ptr(:,:)
call sub(NULL(),3)
call sub(NULL(ptr),3)
call sub()
end

subroutine sub(arr,d)
  integer , optional :: arr(:,:),d
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine
