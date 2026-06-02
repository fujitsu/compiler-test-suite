!             CVCT5703            LEVEL=1        DATE=84.02.04
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5703                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-04                                     C
!*******************************************************************C
!OCL N1.GT.0,N2.GT.1
PROGRAM  CV5703
  IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  real*8   DA10(20,20),DA20(20,20),DA30(20,20)
  real*8   DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/
  DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/
  DATA     N1/1/,N2/2/,N3/3/,N4/10/,N5/15/,NN/20/
  !
  DO  II=1,5
!OCL  REPEAT(10)
     DO  K=2,N4
!OCL  REPEAT(15)
        DO  J=2,N5
           DO  I=2,N5
              DB10(K,J,I) = DB10(K,J+N3,I)*DB20(K+N4-1,N5,I)
              DB20(K,J,I) = DB30(K,J-1,I)+DB10(K,K+1,I)
              DB30(K,J,I) = DA20(K,I)*DB10(K+N1+1,J+N2-1,I+II)
10            CONTINUE
           enddo
        enddo
     enddo
  enddo
  !
!OCL  N3.GT.2
  DO  I=N2,10
!OCL  N2.GT.N1
    DO  J=2,N4
        DO  K=2,NN-5
           DA10(I,K+N3) = DA30(I+N1,K) - DA20(I+10,J)
           DA20(I+N1,K) = DA20(I+N2+1,I) * DA30(I,K)
           DA30(I,K+N2) = DA10(N3,K) + DA10(I,K)
20         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I1=3,15
!OCL N3.GT.N2,N2.GT.N1
     DO  II=1,N3
        DO  I2=3,15
           DO  I3=3,15
              DA20(I1+N1,I2) = DA20(I1+N1,I2) + DA10(I1,I3)
              DA10(I1,I3) = DA10(I1-N1+2,I3) * DA20(I1,I2+N1+1)
              DB30(I2,I3+N2,I1) = DB30(I1,I2,I3)-DB20(I1-N2+1,I2,I3)
              DB20(I1,I2,I3) = DB10(I3,I2,I1)-DB30(I2,I3,I1+1+N2)
              DB10(I3,I1,I2+N3) = DA30(I1+N1,I3)*2.D0
           enddo
        enddo
     enddo
  enddo
30 CONTINUE
  !
  WRITE(6,*) ' ****CVCT5703**NO.01**** '
  WRITE(6,1) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,2) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (DB20) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  WRITE(6,1) ' (DB30) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  1 format(a,(8f12.3))
  2 format(a,(5f17.2))
  STOP
END PROGRAM CV5703
