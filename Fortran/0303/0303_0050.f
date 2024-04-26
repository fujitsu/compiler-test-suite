      REAL*8      DA(50),DB(50),DC(50),DX,DY
      COMPLEX*16  CA(50),CB(50)
      INTEGER*4   NC(50)
      DO 10 I=1,50
        DA(I)=DFLOAT(I)
        DB(I)=1.D0
        DC(I)=DFLOAT(51-I)
        CA(I)=DCMPLX(DA(I),DB(I))
        CB(I)=DCMPLX(DB(I),DC(I))
        NC(I)=I
 10   CONTINUE
!
      DO 20 J=5,20
       DO 20 I=2,NC(J)
         DA(I)=DB(I)+DSQRT(DA(I))
         CA(I)=CA(I)/CB(I)

         DX=DREAL(CA(I))
         DY=DIMAG(CA(I))

         DB(I)=DB(I)+DX
         DY=DABS(DY)
         DC(I)=DC(I)+DSQRT(DY)
 20   CONTINUE
      WRITE(6,*) DA
      WRITE(6,*) DB
      WRITE(6,*) DC
!
      STOP
      END
