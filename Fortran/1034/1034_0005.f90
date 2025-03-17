      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION R(1,1),A(1)
      A(1)=1._8
      R(1,1)=1._8
      S1=0._8
      S2=0._8
      S3=0._8
      S4=0._8
      S5=0._8
      S1=S1+A(1)*R(1,1)
      DO I=1,1
      DO J=1,1
        S1=S1+A(1)*R(1,1)
        S2=S2+R(1,1)
        S3=S3+A(1)*R(I,J)
        S4=S4+A(1)*R(I,J)
        S5=S5+A(1)*R(I,J)
      END DO  
      END DO
      WRITE(1,*)S1
      call chk
      print *,'pass'
      END
      subroutine chk
      rewind 1
      read(1,*) a
      if (abs(a-2.)>0.00001)print *,'error'
      end
