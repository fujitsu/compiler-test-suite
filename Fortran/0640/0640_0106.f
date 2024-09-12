      PROGRAM MAIN
      REAL    *4    DV11(4,4),DV12(4,4),DV13(4,4),DS11,DS12/1.0/
      COMPLEX *8    CV11(4,4),CV12(4,4),CV13(4,4)
      LOGICAL *4    LV21(10)/4*.TRUE.,3*.FALSE.,3*.TRUE./
      REAL    *4    RS21/0./,RV21(10)/3*-1.,4*0.5,3*-2./
      INTEGER *4    IV21(10)/1,2,3,4,5,4,3,2,1,3 /,IS21/-10/
      INTEGER *2    HS21/-10/,HS22/-20/
      INTEGER *4    IV31(10)/10*0/,IS31/1/
      REAL    *4    RS31/0./
      REAL    *8    DV31(10)/0.,5.,3.,6.,5.,6.,4*0./,DS31/0./,DS32/0/

      DV11 = 0
      CV11 = 0
      IS22 = 0
      CALL INIT(DV12,DV13,CV12,CV13)
      DO 100  K=1,4
       DO 100  J=1,4
        DO 100  I=1,4
         DS11 = DV12(I,I) - DS12
         DV11(K,J)=DV11(K,J)+DV12(K,I)*DV13(I,J)
         CV11(J,K)=CV12(J,I)*CV13(I,K)+CV11(J,K)
         IF ( 0 .GT. DS11 ) THEN
           DS12 = DV12(I,I)
         END IF
  100 CONTINUE
      WRITE(6,*) '### DV11 ###'
      WRITE(6,91) DV11
      WRITE(6,*) '### DV12 ###'
      WRITE(6,91) DV12
      WRITE(6,*) '### DV13 ###'
      WRITE(6,91) DV13
      WRITE(6,*) '### CV11 ###'
      WRITE(6,91) CV11
      WRITE(6,*) '### CV12 ###'
      WRITE(6,91) CV12
      WRITE(6,*) '### CV13 ###'
      WRITE(6,91) CV13
      WRITE(6,*) '### DS12 ###'
      WRITE(6,97) DS12
  91  FORMAT(4(2X,D14.7))
      DO 200  I=1,10
        IF (LV21(I).OR.LV21(11-I)) THEN
          RS21 = MAX(RV21(I)**2,RV21(I)*2,RV21(I)+2,RS21)
          IF (LV21(I)) RV21(I)=I/16.
        ENDIF
        IF (IV21(I).GT.IS21) THEN
          IS21 = IV21(I)
          HS21 = I
          HS22 = RV21(I)
        ENDIF
        IS22 = MIN(IS22,ABS(IV21(I)))
  200 CONTINUE
      WRITE(6,*) '### RS21 ###'
      WRITE(6,97) RS21
      WRITE(6,*) '### RV21 ###'
      WRITE(6,93) RV21
      WRITE(6,*) '### IV21 ###'
      WRITE(6,99) IV21
      WRITE(6,*) '### IS21 ###'
      WRITE(6,*) IS21
      WRITE(6,*) '### HS21 ###'
      WRITE(6,*) HS21
      WRITE(6,*) '### HS22 ###'
      WRITE(6,*) HS22
      WRITE(6,*) '### IS22 ###'
      WRITE(6,*) IS22
  93  FORMAT(5(1X,D14.7))
  99  FORMAT(5(1X,I4))
      DO 300  I=1,10
        IF (IV31(I).LT.IS31) GOTO 31
          IS31 = IV31(I)
   31   CONTINUE
        IF (DV31(I).GE.DS31) DS31 = DV31(I)
        IF (DV31(I).LE.DS32) GOTO 300
          RS31 = DV31(I-1)
          DS32 = DV31(I)
  300 CONTINUE
      WRITE(6,*) '### IS31 ###'
      WRITE(6,*) IS31
      WRITE(6,*) '### DS31 ###'
      WRITE(6,97) DS31
      WRITE(6,*) '### RS31 ###'
      WRITE(6,97) RS31
      WRITE(6,*) '### DS32 ###'
      WRITE(6,97) DS32
      WRITE(6,*) '### IV31 ###'
      WRITE(6,99) IV31
      WRITE(6,*) '### DV31 ###'
      WRITE(6,95) DV31
  95  FORMAT(5(1X,D14.7))
  97  FORMAT(D14.7)
      STOP
      END

      SUBROUTINE  INIT(DV12,DV13,CV12,CV13)
      REAL    *4   DV12(16),DV13(16)
      COMPLEX *8   CV12(16),CV13(16)
      DO 10 I=1,16
        DV12(I) =((-1) ** I )*I
        DV13(I) = 1-I
        CV12(I) = CMPLX(I,I)
        CV13(I) = CMPLX(DV12(I),DV13(I))
   10 CONTINUE
      DV12(16) = 0.5
      RETURN
      END
