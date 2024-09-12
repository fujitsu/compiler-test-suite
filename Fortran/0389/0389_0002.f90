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
  subroutine opt(ai,ar,aco,al,ach,axx,adi)
    integer,allocatable,intent(out),optional::ai(:)
    real,allocatable,intent(out),optional::ar(:)
    complex,allocatable,intent(out),optional::aco(:)
    logical,allocatable,intent(out),optional::al(:)
    character,allocatable,intent(out),optional::ach(:)
    type(xxx),allocatable,intent(out),optional::axx(:)
    type(seq),allocatable,intent(out),optional::adi(:)
  end subroutine
end module

use mod
call opt()
print *,'pass'
end
