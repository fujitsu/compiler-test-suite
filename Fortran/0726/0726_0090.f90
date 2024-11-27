 call s1
 print *,'pass'
 end
      module Personnel_class
      implicit none
      private :: init_Personnel
      type Personnel
         private
         integer :: ssn
      end type Personnel
      interface new
         module procedure init_Personnel
      end interface
      contains
         subroutine init_Personnel(this,s)
         type (Personnel), intent (out) :: this
         integer, intent (in) :: s
         this%ssn = s
         Print *, s
         end subroutine init_Personnel
      end module Personnel_class
      module Student_class
      use Personnel_class
      implicit none
      private :: Personnel
      end module Student_class
      subroutine s1
      use Student_class
      end
