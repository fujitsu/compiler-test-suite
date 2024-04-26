      PROGRAM MAIN
      IMPLICIT REAL*8 (A-H,O-Z)
      PARAMETER (KK=10,JJ=10,II=10)
      REAL*8  T(KK,JJ,II)
      COMMON/CM1/NELMT
      COMMON/CM2/IELMT(50,2)
      DATA KM1,JM1,IM1/3*10/
      DATA TP/20/,TB/5/
      
      DO 10 I=1,II
        DO 10 J=1,JJ
          DO 10 K=1,KK
   10       T(K,J,I)=1.
      CALL INPUT
      WRITE(6,*) IELMT
      CALL TINLIN(KM1,JM1,IM1,T,TP,TB,KK,JJ,II)
      STOP
      END
C
      SUBROUTINE INPUT
      IMPLICIT REAL*8 (A-H,O-Z)
      COMMON/CM1/NELMT
      COMMON/CM2/IELMT(50,2)
      NELMT=50
      DO 20 I=1,NELMT
        DO 20 J=1,2
          IELMT(I,J)=I+J-1
20    CONTINUE
      RETURN
      END
C
      SUBROUTINE TINLIN(KM1,JM1,IM1,T,TP,TB,KK,JJ,II)
      REAL*8    T(KK,JJ,II)
      REAL*8    TP, TB
      TDIFF = (TP-TB)/(KM1-1)
      DO 30 I=2,IM1
        DO 40 J=2,JM1
          DO 50 K=3,KM1
            T(K,J,I) = T(K-1,J,I)+TDIFF
   50       CONTINUE
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) (((T(I,J,K),I=1,10,2),J=1,2,10),K=1,10,2)
      RETURN
      END
