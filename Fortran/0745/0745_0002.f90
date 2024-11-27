 module M1
   implicit NONE
   PUBLIC
   integer, parameter :: N = 10
   character(len=N)   :: T = "   Hallo !"
   real, dimension(N) :: X
 end module M1

 module M2
   use M1
   implicit NONE
   PRIVATE
   PUBLIC::T,N,X

   public :: p
 contains
   subroutine p(z)
      real, dimension(N) :: z
      z = 1  ;   z(N) = N
      write(1,*)z(1), z(N)
   end subroutine
 end module M2

 program test
   use M2
   implicit NONE

   write(1,*) t
   call p(x)
print *,'pass'

 end program test

