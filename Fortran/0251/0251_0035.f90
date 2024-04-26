implicit none
type tt
 integer :: ii(4)=0
 integer :: ii2(3,4)=0
end type

type,extends(tt) :: tt2
 integer,allocatable :: alc(:)
 integer,allocatable :: alc2(:,:)
end type

call ss

contains
subroutine ss
block
save
class(*),allocatable :: up(:)
class(tt),allocatable :: po(:,:,:)
allocate(tt2::po(3,4,5))
allocate(up(4),source=po(2,3,5))

select type(up)
class is(tt2)
 select type(po)
 classis(tt2)
  allocate(up(2)%alc(4))
  allocate(po(2,3,5)%alc(7))
  up(2)%alc=2
  po(2,3,5)%alc=20
  up(2)%ii=2
  po(2,3,5)%ii=8
block
class(*),allocatable :: up(:)
class(tt),allocatable :: po(:,:,:)
allocate(tt2::po(3,4,5))
allocate(up(4),source=po(2,3,5))

select type(up)
class is(tt2)
 select type(po)
 classis(tt2)
  allocate(up(2)%alc(4))
  allocate(po(2,3,5)%alc(7))
  up(2)%alc=2
  po(2,3,5)%alc=20
  up(2)%ii=2
  po(2,3,5)%ii=8
  if(any(up(2)%alc/=up(2)%ii)) print*,104
  if(any(po(2,3,5)%alc/=20) .or. any(po(2,3,5)%ii/=8)) print*,101,po(2,3,5)%alc,po(2,3,5)%ii
  print*,'pass'
 class default
  print*,102
 end select
 class default
 print*,103
end select
end block
  if(any(up(2)%alc/=up(2)%ii) .or. any(po(2,3,5)%alc/=20) .or. any(po(2,3,5)%ii/=8)) print*,105
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
