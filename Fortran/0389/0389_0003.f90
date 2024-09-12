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

  contains
  function fun(ai,ar,aco,al,ach,axi,adi) result(k)
    integer,allocatable,intent(out)::ai(:)
    real,allocatable,intent(out)::ar(:)
    complex,allocatable,intent(out)::aco(:)
    logical,allocatable,intent(out)::al(:)
    character,allocatable,intent(out)::ach(:)
    type(xdi),allocatable,intent(out)::axi(:)
    type(sdi),allocatable,intent(out)::adi(:)
    logical :: k 
    k = .false.
    if (allocated(ai).or.allocated(ar).or.allocated(aco).or.allocated(al).or.allocated(ach).or.allocated(axi).or.allocated(adi)) then
      k = .false.
    else
      k = .true.
    end if
  end function
end module

use mod
integer,allocatable::ai(:)
real,allocatable::ar(:)
complex,allocatable::aco(:)
logical,allocatable::al(:) 
character,allocatable::ach(:)
type(xdi),allocatable::axi(:)
type(sdi),allocatable::adi(:)
allocate(ai(3),ar(3),aco(3),al(3),ach(3),axi(3),adi(3))
 if(fun(ai,ar,aco,al,ach,axi,adi)) then
   print *,'pass'
 else 
   print *,'ng'
 end if
end
