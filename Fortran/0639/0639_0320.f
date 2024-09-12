      LOGICAL*4 L41(10)
      DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     *         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      REAL*8     D60(10),D61(10),D62(10)
      REAL       R60(10),R61(10),R62(10)
      DATA D60,D61/20*0.0D0/
      DATA R60,R61/20*0.0D0/
      DATA D62/1.1,2.2,3.3,4.4,5.5
     E         ,6.6,7.7,8.8,9.9,10/
      DATA N/10/

      R62 = 0
      SS = 0

      RDV64 = 0.
      DO 40 I=2,N
        IF (L41(I)) THEN
          R60(I)=R60(I-1)+R61(I)
          R61(I)=R61(I-1)+R62(I)
          D60(I) = DBLE(I)
          D61(I) = DINT(D62(I))
          RDV64 = RDV64 + ( D60(I) + D61(I) )
          R62(I)=R62(I-1)-D61(I)
          SS=SS+R62(I)
        ENDIF
  40  CONTINUE

      WRITE(6,*) D61,SS,R62
      STOP
      END
