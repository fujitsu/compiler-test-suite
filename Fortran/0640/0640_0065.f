      PROGRAM MAIN
      IMPLICIT   REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON   /BLK1/   DA10(20),DA20(20),DA30(20),DA40(20)
      COMMON   /BLK4/   DB10(20,20),DB20(20,20)
      COMMON   /BLK2/   CD10(20),CD20(20),CD30(20),
     &                 CD40(20,20),CD50(20,20),CDX
      COMMON   /BLK3/  LD10(20),LD20(20,20)
      COMMON   /INVK/  IND
      DIMENSION    DARG1(20),DARG2(400)
      DIMENSION    RARG1(20),RARG2(400)
      DIMENSION    CDARG(60)

      EQUIVALENCE   (DA40(1),DARG1(1)),(DB10(1,1),DARG2(1))
      EQUIVALENCE   (CDX,CDARG(60))
      EQUIVALENCE   (RARG1(1),RARG2(1))
      EQUIVALENCE   (DX,DA20(1)),(DY,DA10(1))
      DATA    RARG2/400*1.0/,N1/10/,N2/20/

      IND = 1
      DO 10 I=2,20
        DA10(IND) = DA20(I) * DA30(I)
        N = I
         DO 20 J=1,N
           DB10(IND,J) = DB20(I,J) + DA40(J)
           DB20(I,J) =  DIMAG(CD40(I,J))
 20      CONTINUE
        DA20(I-1) = DMAX1( DA10(IND),DX )
        DY = DY + DMIN1( DA30(I),DA40(I) )
 10   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DB10) ',DB10
      WRITE(6,*) ' (DB20) ',DB20
      WRITE(6,*) ' DY = ',DY

      DO 30 I=1,N1
        IND = I+1
        DA40(I) = DA10(IND) / DA40(IND) + DA30(I)
        IF ( DA40(I) .GT. DA20(IND) ) THEN
          LD10(I) = .NOT. LD10(I)
          DX = DNINT( DA40(I) )
          DY = DA20(IND)
        ELSE
          DX = DA20(IND)
          DY = DNINT( DA40(I) )
        ENDIF
        DO 40 J=I,N2
          CDX = DCMPLX( DB10(I,J),DB20(IND,J) )
          CD10(J) = CD20(IND) * CDX - CD10(J)
 40     CONTINUE
        DARG1(IND) = DX + DY
         IF ( LD10(I) ) THEN
           DX = DABS( DX - DY )
         ELSE
           DY = DABS( DY - DX )
         ENDIF
        DO 50 K=10,N2
          IF ( LD10(K) ) THEN
            CDARG(K) = CD10(K) * CD40(I,K)
          ELSE
            CDARG(K) = CD20(K) * CD40(I,K)
          ENDIF
          CDARG(K+N2)   = CD30(K) + CD30(IND)
          CDARG(K+N2*2) = DCMPLX(DB10(I,K),DB20(K,I))
 50     CONTINUE
        CD20(IND) = DCMPLX(DX,DY)
 30   CONTINUE
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (DARG1) ',DARG1
      WRITE(6,*) ' (CDARG) ',CDARG
      STOP
      END
      BLOCK DATA  BKINT
      IMPLICIT  REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON   /BLK1/  DA10(20),DA20(20),DA30(20),DA40(20)
      COMMON   /BLK4/   DB10(20,20),DB20(20,20)
      COMMON   /BLK2/  CD10(20),CD20(20),CD30(20),CD40(20,20),
     *                CD50(20,20),CDX
      COMMON   /BLK3/  LD10(20),LD20(20,20)
      COMMON   /INVK/  IND
      DATA     DA10,DA20,DA30,DA40/20*1.D0,20*4.D0,20*2.D0,20*3.D0/
      DATA     DB10,DB20/400*5.D0,400*6.D0/
      DATA     CD10,CD20,CD30/60*(1.D0,2.D0)/
      DATA     CD40,CD50/400*(4.D0,2.D0),400*(2.D0,3.D0)/
      DATA     CDX/(0.5D0,0.2D0)/
      DATA     LD10,LD20/20*.TRUE.,400*.FALSE./
      DATA     IND /1/
      END
