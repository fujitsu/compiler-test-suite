module amod
      implicit none
      private
      integer, public :: a
      public :: inita
contains
      subroutine inita
      a        = 1234
      end subroutine inita
end module amod

module bmod
      use amod
      implicit none
      private
      integer, public :: b
      public :: initb
contains
      subroutine initb
      call inita
      b        = a+5678
      end subroutine initb
end module bmod
program testmod
use bmod
implicit none

call initb

write (1,*) 'b=', b
if (b/=6912)write(6,*) "NG"
print *,'pass'

end program testmod
