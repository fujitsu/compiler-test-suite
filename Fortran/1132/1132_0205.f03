!             CVCT5702            LEVEL=1        DATE=84.02.06
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5702                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-03                                     C
!*******************************************************************C
!OCL N1.GT.0,N2.GT.1
PROGRAM  CV5702
  !      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  type st1
     real*4   DA10(20,20),DA20(20,20),DA30(20,20)
     real*8   DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
  end type st1
  type(st1) :: str
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.00/,str%DA20/400*2.0/,str%DA30/400*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,NN/19/
  !
  DO  II=1,5
     DO  J=II,N4
        DO  K=2,N3
           DO  I=2,N3
              str%DB20(J,K,I) = str%DB30(J,K-1,I)+str%DB10(J,K+1,I)
              str%DB10(J,K,I) = str%DB10(N4,N3,I)*str%DB20(II,2,I)
              str%DB30(J,K,I-1)= str%DA20(J,I) + str%DA20(J,K)
10            CONTINUE
           enddo
        enddo
     enddo
  enddo
  !
!OCL NN.GT.10,NN.GT.N2,NN.GT.N3
  DO  I=N2,10
     DO  J=2,N3
        DO  K=2,NN
           str%DA10(I,K) = str%DA30(K-N1,I) - str%DA20(K,I-1)
           str%DA20(I,K) = str%DA20(NN-K+1,I) * str%DA30(K,NN-I)
           str%DA30(I,K) = str%DA10(N2,2) + str%DA10(K,I)
20         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I1=1,20
     DO  II=1,N2
        DO  I2=1,19
           DO  I3=1,20
              str%DA20(I1,I2) = str%DA20(I1,I2) + str%DA10(I1,I3)
              str%DA10(I1,I3) = str%DA10(I1,I3) - str%DA20(I1,I2+1)
              str%DB30(I2,I3,I1) = str%DB30(I1,I1,I3)*2.0-str%DB20(I1,I2,I3)
              str%DB20(I1,I2,I3) = str%DB10(I3,I2,I1)-str%DB30(I2,I3,I2)
              str%DB10(I3,I1,I2) = str%DA30(I1,I3)*2.0
           enddo
        enddo
     enddo
  enddo
30 CONTINUE
  !
  WRITE(6,*) ' ****CVCT5702**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5702
