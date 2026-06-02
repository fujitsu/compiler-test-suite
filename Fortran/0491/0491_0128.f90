integer :: ii=2
Call S23(ii)
Call S24(ii)
Call S25(ii)
print *,'pass'
contains

      subroutine s23( p) 
        type(*)::p
      end subroutine

      subroutine s24( p) 
         integer:: p(..)
      end subroutine

      subroutine s25( p) 
         type(*):: p(..)
      end subroutine
end
