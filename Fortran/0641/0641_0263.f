      REAL*8 A(314)
      INTEGER IS(360), IC(360), IA(60,6), IB(60,6), ICNT(60,6)
      LOGICAL TT(360), TX(60,6)
      EQUIVALENCE (IS(1), IA(1,1)), (IC(1), IB(1,1)), (TT(1), TX(1,1))
      DATA A/314*0.0/
      DATA IS/360*0/
      DATA TT/360*.FALSE./ 
      DATA ICNT/360*0/ 
      INTEGER II2, II1
      REAL RR3, RR2, RR1
      DOUBLE PRECISION DD4, DD3, DD2, DD1

      IA=0
      IB=0
      IC=0
      TX=.FALSE.
      Pi = ATAN (1.) * 8
      IPi = Pi
      II2 = (IPi + 1) / 8
      II1 = II2 * 8 + 1
C$OMP PARALLEL IF (IPi .GT. 151) SHARED (IPi,A,IC,IS) PRIVATE (DD1,RR1
C$OMP& ,RR2,RR3,DD2,DD3,DD4,I,R)
C$OMP DO 
      DO I=1,IPi-6,8
       RR1 = I * 0.01D0
       RR2 = (I + 2) * 0.01D0
       RR3 = (I + 4) * 0.01D0
       R = (I + 6) * 0.01D0
       A(I) = SIN (RR1)
       A(I+2) = SIN (RR2)
       A(I+4) = SIN (RR3)
       A(I+6) = SIN (R)
       DD2 = A(I) * (-100D0)
       DD3 = A(I+2) * (-100D0)
       DD4 = A(I+4) * (-100D0)
       DD1 = A(I+6) * (-100D0)
       IC(I) = 1D0 + DD2
       IC(I+2) = 1D0 + DD3
       IC(I+4) = 1D0 + DD4
       IC(I+6) = 1D0 + DD1
       IS(I) = A(I) * 100D0
       IS(I+2) = A(I+2) * 100D0
       IS(I+4) = A(I+4) * 100D0
       IS(I+6) = A(I+6) * 100D0
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      DO I=II1,IPi,2
       R = I * 0.01D0
       A(I) = SIN (R)
       DD1 = A(I) * (-100D0)
       IC(I) = 1D0 + DD1
       IS(I) = A(I) * 100D0
      END DO
C$OMP PARALLEL SHARED (IA,IB,TX,ICNT) PRIVATE (J,I)
C$OMP DO 
      DO J=1,6

       DO I=1,60
        IF (IA(I,J) .LE. IB(I,J)) THEN
         TX(I,J) = .NOT.TX(I,J)
        END IF
        IF (TX(I,J)) THEN
         ICNT(I,J) = IA(I,J)
        END IF
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      PRINT *, TX, ICNT, IS, IC
      END
