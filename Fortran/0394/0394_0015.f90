module lib
  implicit none

  integer, parameter, private :: noninit = -huge(1)

  type :: childt
     private
     integer :: k = noninit
     type (childt), pointer  :: child_pt => null()
  end type childt

  type :: mothert
     type (childt), pointer  :: root_child_pt => null()
     type (mothert), pointer :: mother_pt => null()
  end type mothert

  type (mothert), pointer, private       :: trav_mother_pt => null()

contains

  subroutine add

  contains
    subroutine addM ()
      implicit none
      type (mothert), pointer :: temp_pt

      allocate (temp_pt)

    end subroutine addM

  end subroutine add

  subroutine remove ()
    implicit none

    allocate (trav_mother_pt)

  end subroutine remove
end module lib
print *,'pass'
end
