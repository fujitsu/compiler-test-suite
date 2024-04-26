integer, pointer :: ptr(:),ptr2(:,:),pp

call sub(NULL())
call sub(NULL(ptr))
call sub()

call bsub(NULL())
call bsub(NULL(ptr))

call csub(NULL())
call csub(NULL(ptr))

call dsub(NULL(),NULL(),NULL(),NULL())
call dsub(NULL(ptr2),NULL(ptr2),NULL(ptr2),NULL(pp))

print*,'pass'

contains
subroutine sub(arr)
  integer , optional :: arr(4)
  if(present(arr) .neqv. .false.) print*,102
end subroutine

subroutine bsub(arr)
  integer , optional :: arr(:)
  if(present(arr) .neqv. .false.) print*,103
end subroutine

subroutine csub(arr)
  integer , optional :: arr(*)
  if(present(arr) .neqv. .false.) print*,104
end subroutine

subroutine dsub(arr,arr1,arr2,sca)
  integer , optional :: sca,arr(4,5),arr1(:,:),arr2(3,*)
  if(present(arr) .neqv. .false.) print*,101
  if(present(arr1) .neqv. .false.) print*,105
  if(present(arr2) .neqv. .false.) print*,106
end subroutine

end
