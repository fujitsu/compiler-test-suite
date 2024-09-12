module m1
type, private :: chain_component
  class(*), pointer :: component_of_next
  type(chain_component), pointer :: next => null()
end type chain_component

type, public :: chain
   private
   type(chain_component), pointer :: start => null()
   type(chain_component), pointer :: end => null()
contains
procedure, non_overridable :: a_component
procedure, non_overridable :: remove_next
end type chain

type, extends(chain), public :: chain_iterator
type(chain_component), pointer :: chain_start => null()
type(chain_component), pointer :: current => null()
contains
procedure, non_overridable :: set => set_next
procedure, non_overridable :: icr
end type chain_iterator

contains

subroutine set_next(this, root)
class(chain_iterator), intent(inout) :: this
class(chain), intent(in) :: root
if (associated(root%start)) then
this%chain_start => root%start
this%current=> root%start
endif
end subroutine set_next

function icr(this) RESULT(next)
class(chain_iterator), intent(inout) :: this
class(*), pointer :: next 
if (.not.associated(this%chain_start)) then
WRITE (6,*) 'NO init'
next => null()
else
if (associated(this%current)) then
next => this%current%component_of_next
this%current => this%current%next
else
next => null()
endif
endif
end function icr

subroutine a_component(this, component)
class(chain), intent(inout) :: this
class(*), intent(in) :: component
if (associated(this%start)) then
allocate(this%end%next)
allocate(this%end%next%component_of_next, source = component)
this%end => this%end%next
else
allocate(this%start)
allocate(this%start%component_of_next, source = component)
this%end => this%start
endif
end subroutine a_component

RECURSIVE subroutine remove_next(this)
class(chain), intent(inout) :: this
type(chain_component), pointer :: tmp
if (associated(this%start)) then
tmp => this%start%next
deallocate(this%start)
this%start => tmp
endif
if (associated(this%start)) &
 call remove_next(this)
end subroutine remove_next

end module m1


use m1
type :: v_t
    integer :: value = 31
end type v_t

type :: list_em
    type(v_t) :: info
    real, allocatable :: data(:)
end type list_em

type(chain) :: xy_next
type(chain_iterator) :: xy

type(list_em), target :: component1(24)

class(*), pointer :: xy1
integer :: i

do i = 1, 24
component1(i)%info%value = i
call a_component(xy_next, component1(i))
enddo

call xy%set(xy_next)
do
xy1 => xy%icr()
if (associated(xy1)) then 
else
  exit
endif
select type(xy1)
type IS (list_em)
write (1,'(i4)')  xy1%info%value
end select
enddo

call xy_next%remove_next
call chk
print *,'pass'
end
subroutine chk
rewind 1
do k=1,24
read(1,*) n
if (k/=n)print *,k,n
end do
end
