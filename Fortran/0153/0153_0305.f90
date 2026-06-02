       MODULE mod1
       IMPLICIT NONE
       intrinsic :: dim
       procedure(dim) :: pprc

      contains
      subroutine sub()

      real*8 :: r1,r2
      end subroutine
      END MODULE

      use mod1
      real :: r1=1,r2=2
      if (pprc(r1,r2)/=3) print *,101
  print *,'pass'
      end

function pprc(r1,r2)
real   ::pprc
pprc=r1+r2
end
