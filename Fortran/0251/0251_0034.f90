implicit none
type tt
 integer :: ii=2
end type

type,extends(tt) :: tt2
 integer,allocatable :: alc
end type

call ss

contains
subroutine ss
block
save
class(*),allocatable :: up
class(tt),allocatable :: po
allocate(tt2::po)
allocate(up,source=po)

select type(up)
class is(tt2)
 select type(po)
 classis(tt2)
  allocate(up%alc)
  allocate(po%alc)
  up%alc=2
  po%alc=20
  up%ii=2
  po%ii=8
  if(up%alc/=up%ii .or. po%alc-po%ii/=12) print*,101
  print*,'pass'
 class default
  print*,102
 end select
 class default
 print*,103
end select
end block

end subroutine
end
