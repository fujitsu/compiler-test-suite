interface
integer function sub(arr)
  integer , optional :: arr(:)
end function 
end interface

integer, allocatable :: ptr(:)
if( sub(NULL()) .ne. sub(NULL(ptr))) print*,101
if( sub() .ne. sub(NULL(ptr))) print*,102
end

integer function sub(arr)
  integer , optional :: arr(:)
  if(present(arr) .eqv. .false.) print*,'pass'
  sub=1
end function 
