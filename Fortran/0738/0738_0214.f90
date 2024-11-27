type st
 type(st),pointer::next
 character(len=1,kind=1),allocatable,dimension(:,:):: pa1
end type
type (st),pointer:: st1
type (st)        :: s

  s=st(null(),reshape((/'A','B','a','b'/),(/2,2/)))
  allocate(st1)
  allocate(st1%next)
  st1%next = s

  if (.not.allocated(s%pa1)) write(6,*) "NG"
  if (any(s%pa1/=reshape((/'A','B','a','b'/),(/2,2/)))) write(6,*) "NG"

 print *,'pass'
end
