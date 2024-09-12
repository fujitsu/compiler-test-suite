      CALL       SUB(1000)
      END
      SUBROUTINE SUB(N)
      REAL A(10000)/10000*1/
      REAL B(10000)/10000*1/
      REAL C(10000)/10000*1/
      REAL D(10000)/10000*1/
      REAL E(10000)/10000*3/

      DO 10 I=3,N
      DO 10 J=3,N
        A(I)=B(J)
        IF(E(J).GT.2)THEN
        C(I)=SIN(D(J))+COS(D(J))+TAN(D(J))+
     *       SQRT(D(J))+EXP(D(J))
        IF(B(J).GT.0)THEN
        C(I)=SIN(D(J))-TAN(D(J))+
     *       SQRT(D(J))+EXP(D(J))
        IF(E(J).GT.0)THEN
        C(I)=SIN(D(J))-TAN(D(J))+
     *       SQRT(D(J))+EXP(D(J))
        IF(E(J).GT.1)THEN
        C(I)=SIN(D(J))-TAN(D(J))+
     *       SQRT(D(J))+EXP(D(J))
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) (A(I),I=1,1000)
      WRITE(6,*) (C(I),I=1,1000)
      END
