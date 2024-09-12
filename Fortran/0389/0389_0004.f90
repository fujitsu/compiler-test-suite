module mod
  type xdi
    integer :: ai(2,2) = reshape((/1,2,3,4/),(/2,2/))
    real :: ar(2,2) = reshape((/1.0,2.0,3.0,4.0/),(/2,2/))
    complex :: aco(2,2) = reshape((/(1.0,1.0),(2.0,2.0),(3.0,3.0),(4.0,4.0)/),(/2,2/))
    logical :: al(2,2) = reshape((/.true., .false.,.true.,.false./),(/2,2/))
    character :: ach(2,2) = reshape((/'1','2','3','4'/),(/2,2/))
  end type

  type sdi
    sequence
    integer :: ai(2,2) = reshape((/1,2,3,4/),(/2,2/))
    real :: ar(2,2) = reshape((/1.0,2.0,3.0,4.0/),(/2,2/))
    complex :: aco(2,2) = reshape((/(1.0,1.0),(2.0,2.0),(3.0,3.0),(4.0,4.0)/),(/2,2/))
    logical :: al(2,2) = reshape((/.true., .false.,.true.,.false./),(/2,2/))
    character :: ach(2,2) = reshape((/'1','2','3','4'/),(/2,2/))
  end type

  type xxx
    integer,allocatable::ai(:)
    real,allocatable::ar(:)
    complex,allocatable::aco(:)
    logical,allocatable::al(:)
    character,allocatable::ach(:)
    type(xdi),allocatable::axd(:)
    type(sdi),allocatable::asd(:)
  end type

  type seq
    sequence
    integer,allocatable::ai(:)
    real,allocatable::ar(:)
    complex,allocatable::aco(:)
    logical,allocatable::al(:)
    character,allocatable::ach(:)
    type(sdi),allocatable::asd(:)
  end type

  contains
  function str(ai,ar,aco,al,ach,axd,asd) result(k)
    integer,allocatable,intent(out)::ai(:)
    real,allocatable,intent(out)::ar(:)
    complex,allocatable,intent(out)::aco(:)
    logical,allocatable,intent(out)::al(:)
    character,allocatable,intent(out)::ach(:)
    type(xdi),allocatable,intent(out)::axd(:)
    type(sdi),allocatable,intent(out)::asd(:)
    logical :: k 
    k = .false.
    if (allocated(ai).or.allocated(ar).or.allocated(aco).or.allocated(al).or.allocated(ach).or.allocated(axd).or.allocated(asd)) then
      k = .false.
    else
      k = .true.
    end if
  end function

  function sequ(ai,ar,aco,al,ach,asd) result(k)
    integer,allocatable,intent(out)::ai(:)
    real,allocatable,intent(out)::ar(:)
    complex,allocatable,intent(out)::aco(:)
    logical,allocatable,intent(out)::al(:)
    character,allocatable,intent(out)::ach(:)
    type(sdi),allocatable,intent(out)::asd(:)
    logical :: k 
    k = .false.
    if (allocated(ai).or.allocated(ar).or.allocated(aco).or.allocated(al).or.allocated(ach).or.allocated(asd)) then
      k = .false.
    else
      k = .true.
    end if
  end function
end module

use mod
type(xxx) :: xx
type(seq) :: se
allocate(xx%ai(3),xx%ar(3),xx%aco(3),xx%al(3),xx%ach(3),xx%axd(3),xx%asd(3))
allocate(se%ai(3),se%ar(3),se%aco(3),se%al(3),se%ach(3),se%asd(3))
if((.not.str(xx%ai,xx%ar,xx%aco,xx%al,xx%ach,xx%axd,xx%asd)).or.(.not.sequ(se%ai,se%ar,se%aco,se%al,se%ach,se%asd))) then
  print *,'ng'
else
  print *,'pass'
end if
end
