      SUBROUTINE PRJFCM(X,SUM)
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      DIMENSION X(100),TENS(3)
      PARAMETER (ZERO=0.0D+00)
      DATA TENS/ 0.0D+00, 0.0D+00, 0.0D+00/
      DO 280 IP=1,3
         INDX=3*(IP-1)
         DO 270 JP=1,IP
            DO 260 IC=1,3
               II=INDX+IC
               DO 230 IB=1,3
                  DO 210 JB=1,3
                     IF(TENS(JB).EQ.ZERO) GO TO 210
                     SUM=X(INDX+IB)
 210              CONTINUE
 230           CONTINUE
               print *,II
 260        CONTINUE
 270     CONTINUE
 280  CONTINUE
      END
      program main
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      DIMENSION X(100)
      call PRJFCM(X,SUM)
      end
