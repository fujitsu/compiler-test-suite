type tt
 integer :: ii=1
end type

type,extends(tt) :: tt2
 integer :: jj=2
end type

type(tt2) :: iim

class(tt),allocatable :: act
allocate(act,source=tt2(1,2))
call sub(act)

contains
subroutine sub(ii)
class(tt) :: ii
type(tt) :: check
class(tt),allocatable :: ii2
allocate(tt2::ii2)
block
type,extends(tt) :: tt3
 integer :: jj=3
end type

class(tt),pointer :: ii,ii22
type(tt3),target :: obj
ii=>obj

select type(ii)
type is(tt3)
allocate(ii22,source = ii)
select type(ii22)
type is(tt3)
if(ii22%jj==3) then
 print*,'pass'
else
 print*,101
endif
end select
class default
 print*,105
end select

if(same_type_as(ii22,ii) .neqv. .true.) print*,106
if(same_type_as(ii22,iim) .neqv. .false.) print*,109
if(extends_type_of(ii22,check) .neqv. .true.) print*,107
if(extends_type_of(ii,check) .neqv. .true.) print*,108
end block
end subroutine

end

