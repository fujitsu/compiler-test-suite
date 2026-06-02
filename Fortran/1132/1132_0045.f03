!             CVCT3144            LEVEL=1        DATE=84.03.17
!********************************************************************C
!  1. PROGRAM NAME : CVCT3510                                        C
!  2. PURPOSE      : TEST FOR MI METHOD                              C
!  3. RESULT       :                                                 C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                 C
!  5. HISTORY      : 1984-03-17                                      C
!********************************************************************C
module mod
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  type TAG
     REAL*8  DA10(10,10,10),DA20(10,10,10)
     REAL*8  DA30(10,10,10),DA40(10,10,10)
  end type TAG
  type(TAG)st
  COMMON  /BLK2/  LD10(10,10,10),LD20(20,20)
end module mod
PROGRAM  CV3510
  use mod
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  DIMENSION       DB10(20,20,20),DB20(20,20,20)
  DIMENSION       DC10(20,20),DC20(20,20)
  !
  DATA   DB10,DB20/8000*1.D0,8000*4.D0/
  DATA   DC10,DC20/400*2.D0,400*-1.D0/
  DATA   IT3/10/,N1/20/
  !
  DO K=1,10
     DO J=1,10
        DO I=2,10,2
           LD10(I,J,K) = .TRUE.
           LD10(I-1,J,K) = .FALSE.
        END DO
     END DO
  END DO
  DO I=2,20,2
     DO J=1,20
        LD20(I,J) = .TRUE.
        LD20(I-1,J) = .FALSE.
     END DO
  END DO
  !
  DO I=1,IT3
     DO J=1,IT3
        DO K=1,IT3
           st%DA10(I,J,K) = DFLOAT(K)
           st%DA20(I,J,K) = DFLOAT(J)
           st%DA30(I,J,K) = DFLOAT(I)
           st%DA40(I,J,K) = DFLOAT(K-I)
        END DO
     END DO
  END DO
  !
  CALL  SUB(DB10,DB20,DC10,DC20,N1)
  !
  WRITE(6,*) (((st%DA10(I,J,K),I=1,10),J=1,10),K=1,5)
  WRITE(6,*) ((DC10(I,J),I=1,10),J=1,10)
  STOP
END PROGRAM CV3510
SUBROUTINE  SUB(DB10,DB20,DC10,DC20,NN)
  use mod
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  DIMENSION       DB10(NN,NN,NN),DB20(NN,NN,NN)
  DIMENSION       DC10(NN,NN),DC20(NN,NN)
  !
  III= 0
5 CONTINUE
  III=III+1
  DO I=1,5
     DO I1=1,10
        DO I2=1,10
           DO I3=1,10
              st%DA10(I1,I2,I3) = st%DA20(I1,I2,I3)+st%DA30(I1,I2,I3)
              st%DA20(I1,I2,I3) = st%DA40(I1,I2,I3)-st%DA30(I1,I2,I3)
           END DO
        END DO
     END DO
     !
     DO JJ=1,5
        DO J1=2,NN
           DO J2=1,NN-2
              DB10(J1,J2,JJ) =DC10(J1,J2)+DC20(J1,J2)
              IF ( DB10(J1,J2,JJ).GT.DB20(J1,J2,JJ) ) THEN
                 N1=J1
                 IF (N1.GT.10) N1=10
                 N2=J2
                 IF (N2.GT.10) N2=10
                 LD10(N1,N2,JJ) = .NOT.LD20(J1,J2)
              ENDIF
              DC10(J1-1,J2)= DB20(J1,J2,JJ)
           END DO
        END DO
        !
        DO J3=1,5
           DO J4=1,10
              IF ( LD10(J3,J4,JJ) ) THEN
                 DX = DC10(J3,J4)*DC20(J4,J3)
              ELSE
                 DX = DB10(J3,J4,JJ)
              ENDIF
              DB20(J3,J4+1,JJ)=DB20(J3,J4,JJ)+(DX-DC10(J3,J4))
           END DO
        END DO
        !
        DO K1=1,NN
           DO K2=1,NN
              DO K3=1,NN
                 DB10(K1,K2,K3) = DMIN1(DB10(K1,K2,K3),DB20(K1,K2,K3))
              END DO
           END DO
        END DO
     END DO
  END DO
  !
  LX = LD10(III,1,1).AND.LD20(III,1)
  IF ( LX .AND. III.LT.10 ) GO TO 5
  !
  RETURN
END SUBROUTINE SUB
