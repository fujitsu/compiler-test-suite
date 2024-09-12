      PROGRAM MAIN
      REAL*4   RA(10),RB(10),S1/1.11/
      REAL*8   DA(10),DB(10),D1/9.99/
      REAL*8   QA(10),QB(10)
      DATA RB/1.12,2.12,3.56,4.78,5.22,6.77,7.11,8.88,9.01,10.43/
      DATA DB/1.12,2.12,3.56,4.78,5.22,6.77,7.11,8.88,9.01,10.43/
      DATA QB/1.12,2.12,3.56,4.78,5.22,6.77,7.11,8.88,9.01,10.43/
      LOGICAL MA(10),MB(10),MC(10)
      DATA MA/10*.TRUE./,MB/10*.FALSE./
      DATA MC/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1        .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./

      DO 10 I=1,10
        RA(I) = AINT(RB(I))
        DA(I) = DINT(DB(I))
  10  CONTINUE
      WRITE(6,*) RA,DA

      DO 20 I=1,10
        RA(I) = AINT(S1)
        DA(I) = DINT(D1)
  20  CONTINUE
      WRITE(6,*) RA,DA

      DO 30 I=1,10
        IF(MA(I)) THEN
          RA(I) = AINT(RB(I))
          DA(I) = DINT(DB(I))
        ENDIF
  30  CONTINUE
      WRITE(6,*) RA,DA

      DO 40 I=1,10
        IF(MB(I)) THEN
          RA(I) = AINT(RB(I))
          DA(I) = DINT(DB(I))
        ENDIF
  40  CONTINUE
      WRITE(6,*) RA,DA

      DO 50 I=1,10
        IF(MC(I)) THEN
          RA(I) = AINT(RB(I))
          DA(I) = DINT(DB(I))
        ENDIF
  50  CONTINUE


      DO 60 I=1,10
        IF(MA(1)) THEN
          RA(I) = AINT(RB(I))
          DA(I) = DINT(DB(I))
        ENDIF
  60  CONTINUE


      DO 70 I=1,10
        IF(MA(2)) THEN
          RA(I) = AINT(RB(I))
          DA(I) = DINT(DB(I))
        ENDIF
  70  CONTINUE



      DO 80 I=1,10
        QA(I) = DINT(QB(I))
  80  CONTINUE
      WRITE(6,*) QA
      STOP
      END
