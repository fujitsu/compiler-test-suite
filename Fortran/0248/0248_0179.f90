integer, allocatable :: ptr(:)
if( sub(arr=NULL(),d=2) .ne. sub(2,NULL(ptr))) print*,101
if( sub(2) .ne. sub(2,NULL(ptr))) print*,102

contains
integer function sub(d,arr)
  integer , optional :: arr(:)
  integer :: d
  if(present(arr) .eqv. .false.) print*,'pass'
  sub=d-1
end function 

end
