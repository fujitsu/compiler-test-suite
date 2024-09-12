      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      COMMON   /BLK1/  DA10(20,20),DA20(20,20),DA30(20,20)
      COMMON   /BLK2/  DB10(20,20),DX,DY,DZ
      COMMON   /BLK3/  CD10(20,20),CD20(20,20),CD30(20,20)
      COMMON   /BLK4/  LD10(20),LD20(20,20),LD30(20,20)
      COMMON   /IND/   NI,NJ,IP,JP
      COMMON   /DOP/   NMAX,NMIN,IHALF,JHALF
      NI=1
      DO 10 I=2,NMAX
        IP = 21-I
        DO 20 J=JHALF,NMAX
          LD20(IP,J) = .NOT.LD30(I,J)
          LD30(IP,J) = .NOT.LD20(J,IP)
          CD10(I,J) = CD10(J,I) + DCMPLX(DX,DY)
          CD20(J,I) = CD30(I,J) + DCMPLX(DX,DZ)
          CD30(IP,J) = CD20(NI,J) + DCMPLX(DZ,DY)
 20     CONTINUE
        NI = NI+1
        DA10(NI,I) = DB10(I,NI) - DA30(JP,I)
        DA20(I,NI) = DA20(I,I) * DA10(I,NI)
        DA30(NJ,NI) = DMAX1(DA20(I,NJ),DA30(I,I))
 10   CONTINUE
      WRITE(6,*) '### (DA10) ###'
      WRITE(6,99) DA10
      WRITE(6,*) '### (CD20) ###'
      WRITE(6,99) CD20
      WRITE(6,*) '### (LD30) ###'
      WRITE(6,*) LD30
      CALL  MATRX
 99   FORMAT(5D14.7)
      STOP
      END
      BLOCK DATA   INIT
      IMPLICIT   REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      COMMON  /BLK1/  DA10(20,20),DA20(20,20),DA30(20,20)
      COMMON  /BLK2/  DB10(20,20),DX,DY,DZ
      COMMON  /BLK3/  CD10(20,20),CD20(20,20),CD30(20,20)
      COMMON  /BLK4/  LD10(20),LD20(20,20),LD30(20,20)
      COMMON  /IND/   NI,NJ,IP,JP
      COMMON  /DOP/   NMAX,NMIN,IHALF,JHALF
      DATA   DA10,DA20,DA30/400*1.D0,200*2.D0,200*4.D0,400*3.D0/
      DATA   DB10/400*5.D0/,DX,DY,DZ/0.5D0,0.2D0,0.4D0/
      DATA   CD10,CD20/400*(2.D0,4.D0),400*(6.D0,3.D0)/
      DATA   CD30/200*(1.D0,5.D0),200*(2.D0,3.D0)/
      DATA   LD10,LD20,LD30/820*.FALSE./
      DATA   NI,NJ,IP,JP/4*1/
      DATA   NMAX,NMIN,IHALF,JHALF/20,1,10,10/
      END

      SUBROUTINE   MATRX
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      COMMON   /BLK1/  DA10(20,20),DA20(20,20),DA30(20,20)
      COMMON   /BLK2/  DB10(20,20),DX,DY,DZ
      COMMON   /BLK3/  CD10(20,20),CD20(20,20),CD30(20,20)
      COMMON   /BLK4/  LD10(20),LD20(20,20),LD30(20,20)
      COMMON   /IND/   NI,NJ,IP,JP
      COMMON   /DOP/   NMAX,NMIN,IHALF,JHALF
      DIMENSION   DD10(400,20),DD20(-100:100,20),DD30(-400:0,20)
      DATA    DD10,DD20,DD30/20040*1.D0/
      DO 10 I=NMIN,IHALF
        DO 10 J=1,NMAX*NMAX
          NJ = I+JHALF
          IF ( JP .GT. 20 ) GO TO 15
            DD10(J,I) = DA10(I,JP)
            DD10(J,NJ) = DA20(I,JP)
            DD30(-J,I) = DA30(I,JP)
            DD30(-J,NJ)= DB10(I,JP)
            GO TO 20
 15       CONTINUE
          DD10(J,I) = DX * DY - DZ
          DD30(-J,I) = DB10(I,I) - DX
          IF (  J .LT. 201 ) THEN
            NJ = J - 100
            DD20(NJ,I) = DIMAG(CD10(I,I)) - DY
          ENDIF
          JP = 0
 20       JP=JP+1
 10   CONTINUE

      NI=1
      DO 30 K=2,NMAX
        NJ = K+1
        JP = K-1
        DO 30 IL=NMIN,NMAX
          DD10(NJ+1,K) = DB10(NI,IL) * DZ - DA20(K,IL)
          IF ( LD10(K) .OR. LD20(K,IL) ) THEN
            DD20(JP,IL) = DD20(K,IL) + DB10(K-1,IL)
            LD30(K,IL) = .NOT.LD20(IL,K)  .AND. .NOT.LD30(IL,K)
            GO TO 35
          ENDIF
          DD30(JP-NMAX,IL) = DD30(-IL,K) * DX - DIMAG(CD10(K,IL))
          DZ = DD10(NJ,K) - DREAL(CD30(K-1,IL)) - DX
          DY = ( DIMAG(CD20(K,IL)) - DX ) * DA30(K,IL)
          CD10(IL,K-1) = DCMPLX(DZ,DY)
          IF ( DZ - DY ) 31,32,32
 31         DA10(K-1,IL) = DY - DD20(NJ,IL) + DX
            GO TO 35
 32         DA20(IL,K-1) = DD30(-NJ,IL) + DZ
            CD20(IL,K) = DCMPLX(DY,DZ)
 35       CONTINUE
          NJ = NJ+1
          JP = JP-2
 30   CONTINUE
      WRITE(6,*) '### (DD10) ###'
      WRITE(6,99) ((DD10(I,J),I=1,100),J=1,20)
      WRITE(6,*) '### (DD20) ###'
      WRITE(6,99) ((DD20(I,J),I=-50,50),J=1,20)
      WRITE(6,*) '### (CD10) ###'
      WRITE(6,99) CD10
      WRITE(6,*) '### (DA10) ###'
      WRITE(6,99) DA10
      WRITE(6,*) '### (DA20) ###'
      WRITE(6,99) DA20
      WRITE(6,*) '### (CD20) ###'
      WRITE(6,99) CD20
      WRITE(6,*) '### (DD30) ###'
      WRITE(6,99) ((DD30(I,J),I=-100,-1),J=1,20)
 99   FORMAT(5(1X,D14.7))
      RETURN
      END
