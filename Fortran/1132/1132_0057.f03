!             CVCT3400            LEVEL=2        DATE=84.01.19
!********************************************************************C
!  1  PROGRAM NAME : CVCT3400                                        C
!  2. PURPOSE      : COMMON / EQUIVALENCE DATA TEST                  C
!  3. RESULT       : 'S' & 'V' EXIST                                 C
!  4. ENVIRONMENT  : VPL(3),ADV(EVL)                                 C
!  5. HISTORY      : 1983-05-20                                      C
!********************************************************************C
!                                                                    C
      module str
      type::str_r8
        sequence
        real*8::A30(20),B20(20,20)
      end type
      type::str_r8_1
        sequence
        real*8::X
      end type
      type::str_r8_2
        sequence
        real*8::X
      end type
      type::str_r_1
        sequence
        real::X
      end type
      type::str_c16
        sequence
        complex*16::D10(20),D20(20),D30(20),D40(20,20),D50(20,20)
      end type
      type::str_c16_1
        sequence
        complex*16::X
      end type
      type::str_l4
        sequence
        logical*4::D10(20),D20(20,20)
      end type
      end module
      PROGRAM  CV3400
      use str
      IMPLICIT   REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      type (str_r8)::D
      type (str_l4)::L
      type (str_c16)::C
      type (str_r8_1)::DA10(20),DA20(20),DA40(20),DARG1(20),DARG2(400),DX,DY
      type (str_r8_2)::DB10(20,20)
      type (str_r_1)::RARG1(20),RARG2(400)
      type (str_c16_1)::CDX,CDARG(60)
      COMMON   /BLK1/   DA10,DA20,DA40
      COMMON   /BLK4/   DB10,D
      COMMON   /BLK2/   C,CDX
      COMMON   /BLK3/  L
      COMMON   /INVK/  IND
!
      EQUIVALENCE   (DA40(1),DARG1(1)),(DB10(1,1),DARG2(1))
      EQUIVALENCE   (CDX,CDARG(60))
      EQUIVALENCE   (RARG1(1),RARG2(1))
      EQUIVALENCE   (DX,DA20(1)),(DY,DA10(1))
      DATA    RARG2%X/400*1.0/,N1/10/,N2/20/
!
      IND = 1
      DO 10 I=2,20
        DA10(IND)%X = DA20(I)%X * D%A30(I)
        N = I
         DO 20 J=1,N
           DB10(IND,J)%X = D%B20(I,J) + DA40(J)%X
           D%B20(I,J) =  DIMAG(C%D40(I,J))
 20      CONTINUE
        DA20(I-1)%X = DMAX1( DA10(IND)%X,DX%X )
        DY%X = DY%X + DMIN1( D%A30(I),DA40(I)%X )
 10   CONTINUE
      WRITE(6,*) ' **** CVCT3400 ** NO.1 **** '
      WRITE(6,*) ' (DA10) ',DA10%X
      WRITE(6,*) ' (DA20) ',DA20%X
      WRITE(6,*) ' (DB10) ',DB10%X
      WRITE(6,*) ' (DB20) ',D%B20
      WRITE(6,*) ' DY = ',DY%X
!
      DO 30 I=1,N1
        IND = I+1
        DA40(I)%X = DA10(IND)%X / DA40(IND)%X + D%A30(I)
        IF ( DA40(I)%X .GT. DA20(IND)%X ) THEN
          L%D10(I) = .NOT. L%D10(I)
          DX%X = DNINT( DA40(I)%X )
          DY%X = DA20(IND)%X
        ELSE
          DX%X = DA20(IND)%X
          DY%X = DNINT( DA40(I)%X )
        ENDIF
        DO 40 J=I,N2
          CDX%X = DCMPLX( DB10(I,J)%X,D%B20(IND,J) )
          C%D10(J) = C%D20(IND) * CDX%X - C%D10(J)
 40     CONTINUE
        DARG1(IND)%X = DX%X + DY%X
         IF ( L%D10(I) ) THEN
           DX%X = DABS( DX%X - DY%X )
         ELSE
           DY%X = DABS( DY%X - DX%X )
         ENDIF
        DO 50 K=10,N2
          IF ( L%D10(K) ) THEN
            CDARG(K)%X = C%D10(K) * C%D40(I,K)
          ELSE
            CDARG(K)%X = C%D20(K) * C%D40(I,K)
          ENDIF
          CDARG(K+N2)%X   = C%D30(K) + C%D30(IND)
          CDARG(K+N2*2)%X = DCMPLX(DB10(I,K)%X,D%B20(K,I))
 50     CONTINUE
        C%D20(IND) = DCMPLX(DX%X,DY%X)
 30   CONTINUE
      WRITE(6,*) ' (DA40) ',DA40%X
      WRITE(6,*) ' (CD10) ',C%D10
      WRITE(6,*) ' (LD10) ',L%D10
      WRITE(6,*) ' (DARG1) ',DARG1%X
      WRITE(6,*) ' (CDARG) ',CDARG%X
      STOP
      END
      BLOCK DATA  BKINT
      use str
      IMPLICIT  REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      type (str_r8)::D
      type (str_l4)::L
      type (str_c16)::C
      type (str_r8_1)::DA10(20),DA20(20),DA40(20),DARG1(20),DARG2(400)
      type (str_r8_2)::DB10(20,20)
      type (str_r_1)::RARG1(20),RARG2(400)
      type (str_c16_1)::CDX,CDARG(60)
      COMMON   /BLK1/  DA10,DA20,DA40
      COMMON   /BLK4/  DB10,D
      COMMON   /BLK2/  C,CDX
      COMMON   /BLK3/  L
      COMMON   /INVK/  IND
      DATA     DA10%X,DA20%X,DA40%X/20*1.D0,20*4.D0,20*3.D0/
      DATA     DB10%X/400*5.D0/
      DATA     D%A30,D%B20/20*2.D0,400*6.D0/
      DATA     C%D10,C%D20,C%D30/60*(1.D0,2.D0)/
      DATA     C%D40,C%D50/400*(4.D0,2.D0),400*(2.D0,3.D0)/
      DATA     CDX%X/(0.5D0,0.2D0)/
      DATA     L%D10,L%D20/20*.TRUE.,400*.FALSE./
      DATA     IND /1/
      END
