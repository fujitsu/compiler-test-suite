      REAL*8      DB(50)/50*1./
      REAL*8      DBRES(50)/50*1./
      REAL*8      DC(50),DCRES(50),DX,DY
      COMPLEX*16  CA(50),CARES(50),CB(50)
      INTEGER*4   NC(50)
      DO 10 I=1,50
        DC(I)=DFLOAT(51-I)
        DCRES(I)=DFLOAT(51-I)
        CA(I)=DCMPLX(DFLOAT(I),DB(I))
        CARES(I)=DCMPLX(DFLOAT(I),DB(I))
        CB(I)=DCMPLX(DB(I),DC(I))
        NC(I)=I
 10   CONTINUE
!
      N=20
      M=1
      L=N*M

      DO 11 I=2,L
         CARES(I)=CARES(I)/CB(I)
         DX=DREAL(CARES(I))
         DY=DIMAG(CARES(I))
         DBRES(I)=DBRES(I)+DX
         DBRES(I)=DY+DX
         DY=DABS(DY)
         DCRES(I)=DCRES(I)+DSQRT(DY)
 11   CONTINUE

      N=20
      M=1
      L=N*M
      DO 20 I=2,L
         CA(I)=CA(I)/CB(I)
         DX=DREAL(CA(I))
         DY=DIMAG(CA(I))

         DB(I)=DB(I)+DX
         DB(I)=DY+DX
         DY=DABS(DY)
         DC(I)=DC(I)+DSQRT(DY)
 20   CONTINUE

      DO 30 I=2,L
        IF(abs(DB(I)-DBRES(I)) > 0.000002)  GOTO 90
        IF(abs(DC(I)-DCRES(I)) > 0.000002)  GOTO 90
 30   CONTINUE
      WRITE(6,*) 'ok'
      GOTO 99
 90   CONTINUE
      WRITE(6,*) 'ng'
      WRITE(6,*) DB
      WRITE(6,*) DBRES
      WRITE(6,*) DC
      WRITE(6,*) DCRES
      GOTO 99
 99   CONTINUE
      STOP
      END
