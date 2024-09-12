      program main
      COMPLEX*8 Q(10),TEMPC
      call sub8(Q,10)
      print *,Q
      end

      SUBROUTINE SUB8(Q,N10)
      COMPLEX*8 Q(10),TEMPC

      DO 20 I1=1,N10
        TEMPC     =2
        Q(I1)=EXP(TEMPC)
   20 CONTINUE

      END
