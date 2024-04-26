      CALL GETINT
      WRITE(6,*) '## OK ##'
      STOP
      END
      SUBROUTINE GETINT
      DIMENSION ZZ(10,10)
      DIMENSION II(10)
!
      ZZ=5
      L2=10
      AX=0
      II=5
      DO 300 I=1,L2
         DO 130 IM=1,5
           AX=AX+ZZ(I,IM)
130      CONTINUE
         DO 150 IM=1,5
         DO 150 JM= 1,IM
           ZZ(I,IM) = ZZ(I,JM)
150      CONTINUE
300    CONTINUE
1000   CONTINUE
      PRINT *,'## AX ## ',AX
      RETURN
      END

