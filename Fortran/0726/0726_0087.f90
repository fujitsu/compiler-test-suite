 call s1
 print *,'pass'
 end
      module first
      private :: local_name
      interface public_name
         module procedure local_name
      end interface
      contains
         subroutine local_name(i)
         integer, intent(in) :: i
         write(1,*)i
         end subroutine local_name
      end module first
      module second
      private :: local_name
      interface public_name
         module procedure local_name
      end interface
      contains
         subroutine local_name(a)
         real, intent(in) :: a
         write(1,*)a
         end subroutine local_name
      end module second
 subroutine s1
      use first
      use second
      integer :: i = 1
      real :: a = 2.0
      call public_name(i)
      call public_name(a)
      end 
