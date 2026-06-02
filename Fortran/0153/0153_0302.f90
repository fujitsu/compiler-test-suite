       MODULE mod1
       IMPLICIT NONE

      intrinsic :: dim
      procedure(dim) :: pprc

      contains
     subroutine sub()

      real*4 :: r1,r2
      write(1,*)pprc(r1,r2)
      end subroutine
     END MODULE

      use mod1
     real :: r1=1,r2=2
     write(1,*) pprc(r1,r2)
print *,'pass'
      end
function pprc(a,b)
pprc=a+b
end
