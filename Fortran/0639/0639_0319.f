      LOGICAL*4 L41(10)
      DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     *         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      REAL*8     RD60(10),RD61(10),RD62(10)
      DATA RD60,RD61/20*0./
      DATA RD62/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.9/

      RDV64 = 0.
      N=10
      DO 40 I=1,N
        IF (L41(I)) THEN
          RD60(I) = DBLE(I)
          RD61(I) = DINT(RD62(I))
          RDV64 = RDV64 + ( RD60(I) + RD61(I) )
        ENDIF
  40  CONTINUE

      WRITE(6,*) RD61
      STOP
      END
