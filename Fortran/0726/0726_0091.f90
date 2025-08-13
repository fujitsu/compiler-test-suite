 call s1
 print *,'pass'
 end
      module first
      private
      public :: J1, public_name
      integer, parameter :: J1 = 0
      interface public_name
         module procedure local_name
      end interface
      contains
         subroutine local_name(i)
         integer, intent(in) :: i
         if (i==J1) write(22,*)'i=',i
         end subroutine local_name
      end module first
      module second
      use first
      private
      public :: J1, public_name
      end module second
      subroutine s1
      use second
      integer :: i = 0
      call public_name(i)
      end
