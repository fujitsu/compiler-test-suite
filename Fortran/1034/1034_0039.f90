module lib

  public :: add, printL, remove, removeL, nm

  integer, parameter, private :: noninit = -huge(1)
  integer, save :: nm = 0

  type :: childt
     private
     integer :: k = noninit
     type (childt), pointer  :: child_pt => null()
  end type childt

  type :: mothert
     type (childt), pointer  :: root_child_pt => null()
     type (mothert), pointer :: mother_pt => null()
  end type mothert

  type (childt),  pointer, private       ::  trav_child_pt => null()
  type (mothert), pointer, private       :: trav_mother_pt => null()
  type (mothert), pointer, private, save :: root_mother_pt => null()

  type (mothert), target, save :: mother

contains

  subroutine add (m)
    integer, intent (in) :: m

    if (.not. associated (root_mother_pt)) then
       root_mother_pt => mother
       trav_mother_pt => root_mother_pt
       allocate (trav_mother_pt%root_child_pt)
       nm = nm + 1
    end if

    call addL(trav_mother_pt%root_child_pt, m)

  contains

    subroutine addL (list_pt, m)
      type (childt), pointer :: list_pt
      integer, intent (in)   :: m
      type (childt), pointer :: temp_pt
      integer                :: i

      do i=2, m
         allocate (temp_pt)
         temp_pt%child_pt => list_pt
         list_pt => temp_pt
         nullify (temp_pt)
      end do
    end subroutine addL

  end subroutine add

  subroutine removeL ()
    type (childt), pointer :: temp_pt

    trav_mother_pt => root_mother_pt
    trav_child_pt => trav_mother_pt%root_child_pt
    temp_pt => trav_child_pt
    trav_child_pt => trav_child_pt%child_pt
    trav_mother_pt%root_child_pt => trav_child_pt
    deallocate (temp_pt)
    write(1,*)'#Confirm#',iaddr(root_mother_pt%root_child_pt)

  end subroutine removeL

end module lib

program main
  use lib

  call add(3)
  call removeL ()
print *,'pass'

end program main

  function iaddr(p)
   use lib
     type (childt)  :: p
  iaddr=1
  end
