integer, pointer :: ptr(:,:)
if( sub(NULL(),3) .ne. sub(NULL(ptr),3)) print*,101
if( sub(d=3) .ne. sub(NULL(ptr),3)) print*,102

contains
integer function sub(arr,d)
  integer , optional :: arr(:,:)
  integer :: d
  if(present(arr) .eqv. .false.) print*,'pass',d
  sub=1
end function 

end
