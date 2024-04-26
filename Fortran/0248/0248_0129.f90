integer, pointer :: ptr(:,:,:)
call sub(NULL(),3)
call sub(NULL(ptr),3)
call sub(d=3)

contains
subroutine sub(arr,d)
  integer , optional :: arr(:,:,:)
  integer :: d
  if(present(arr) .eqv. .false.) print*,'pass',d
end subroutine

end
