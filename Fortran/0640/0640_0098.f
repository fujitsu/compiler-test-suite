      PROGRAM MAIN

      REAL    *8    DV11(10)/5*1.0,5*5.0/ ,DS11/2./ ,DS12 /3./
      REAL    *4    RS11/1.0/

      LOGICAL *4    LV21(10)/3*.TRUE.,3*.FALSE.,3*.TRUE.,.FALSE./,
     1              LS21/.FALSE./, LS22/.TRUE./
      INTEGER *4    IS21/1/, IS22/2/,IV11(10)
      REAL    *4    RV21(10),RV22(10),RV23(10)
      COMPLEX *16   CDV21(10)
      DATA          IV11/10*1/
      DATA          RV21/10*1.0/

      LOGICAL *4    LV31(10)/3*.TRUE.,7*.FALSE./, LS31/.TRUE./
      REAL    *4    RS31/1.0/
      REAL    *8    DS31/2.0/
      COMPLEX *16   CDV31(10)/10*(0.,0.)/
      INTEGER NPL, K, L, I
      PARAMETER (NPL=5)

      DO 100  I=2,9
        RS11 = DMOD ( DV11 (I-1),DS11 ) - IV11 (I)
        DV11 (I) = DDIM ( DV11(I),DS11) + DS12
   11   DV11 (I-1) = DPROD ( RS11,3.0)
        IV11 (I) = DV11 (I+1) * DS12 - RS11
  100 CONTINUE

      WRITE(6,*) DV11,IV11,DS11

      DO 200  I=1,10
        IF ((LS21.OR.LV21(I).AND.LV21(11-I)).NEQV..NOT.LS22) THEN
          RV21 (I) = SIN(RV21(I))+ IS21
          RV22 (I) = COS(RV21(I))+ IS21
        ELSE
          RV21 (I) = SIN(RV21(I))+ IS22
          RV22 (I) = COS(RV21(I))+ IS22
        ENDIF

        IF (LS21.AND.LS22) THEN
          CDV21(I) = CMPLX(I,0.)**3
        ELSE
          CDV21(I) = CMPLX(0,I)**4
        ENDIF

        RV23(I) = RV21(I)**2 + RV22(I) **2.
  200 CONTINUE

      WRITE(6,*) RV21,RV22,RV23
      WRITE(6,'(5(1X,"(",F0.1,",",F0.1,")"))')
     &     (DBLE(CDV21(I)), DIMAG(CDV21(I)), I=1,10)
      WRITE(6,*) IS21,IS22,LS21,LS22,LV21

      DO 300  J= 2,8,3
       DO 310  I =1,10
        IF(LV31(I)) GOTO 31
          IF (LS31)  GOTO 32
           CDV31(I) = CMPLX(RS31,DS31)* CDV31(I) / 2 - I
           GOTO 33

   31   CDV31(I)= CDV31(I) * CMPLX(0,DS31)
   34   GOTO 310

   32   LV31(I) = LS31.AND.(I.LT.J)
   33   GOTO 34

  310  CONTINUE
       WRITE(6,*) LV31,LS31
       DO 9220 K=1,10,NPL
         L = MIN0(10, K+NPL-1)
         WRITE(6,9200,ADVANCE='NO') K, L
 9200    FORMAT('CDV31(',I2,':',I2,')=')
         DO 9210 I=K,L
           WRITE(6,9211,ADVANCE='NO') DBLE(CDV31(I)), DIMAG(CDV31(I))
 9211      FORMAT(1X,'(',0P,F0.1,',',F0.1,')')
 9210    CONTINUE

         WRITE(6,*)
 9220    CONTINUE

       LS31 = .FALSE.
  300 CONTINUE

      STOP
      END
