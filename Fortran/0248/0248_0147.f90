integer function sub(d,arr)
  integer , optional :: arr(3)
  integer :: d
  if(present(arr) .neqv. .false.) print*,201
  sub=d-1
end function 

interface
integer function sub(d,arr)
  integer , optional :: arr(3)
  integer :: d
end function 
end interface
integer, pointer :: ptr(:)
if( sub(arr=NULL(),d=2) .ne. sub(2,NULL(ptr))) print*,101
if( sub(2) .ne. sub(2,NULL(ptr))) print*,102
print*,'pass'
end
