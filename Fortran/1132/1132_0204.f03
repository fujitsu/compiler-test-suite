!             CVCT5701            LEVEL=2        DATE=86.07.23
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5701                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-03                                     C
!*******************************************************************C
PROGRAM  CV5701
!  IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  type st1
     real*8   DA10(20,20),DA20(20,20),DA30(20,20)
     real*4   DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
  end type st1
  type(st1) :: str
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.0/,str%DA20/400*2.0/,str%DA30/400*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     N1/1/,N2/2/,N3/10/,NN/20/
  !
  DO  I=1,NN
     DO  J=1,10,N1
        DO  K=1,N3
           DO  II=2,N3
              str%DB10(I,K,II) = str%DB20(I,J,II) * str%DB30(I,J+N1,II)
              str%DB20(I,1,II-1) = str%DB10(I,K,II) + str%DB20(I,J+1,II)
              str%DB30(I,J,II) = str%DA20(I,II)*str%DA30(I,II)
10            CONTINUE
           enddo
        enddo
     enddo
  enddo
  !
  DO  I=1,N3
     DO  J=I,NN
        DO  K=J,N3
           str%DA10(I,K) = str%DA20(I,K) * str%DA10(1,J)
           str%DA30(I,K) = str%DA30(N3,N3) + str%DA10(I,J)
20         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I1=N2,N3
     DO  I2=2,N3+1
        DO  I3=2,N3
           str%DA20(I1,I1) = str%DA20(I1,I1) + str%DA10(I1,I3)
           str%DA10(I1,I3) = str%DA10(I2,I3+N3) * str%DA20(I1+1,I2)
           str%DB30(I2,I3,I3) = str%DB30(I1,I3+1,I3)-str%DB20(I1,I2,I2+1)
           str%DB20(I3,I2,I2) = str%DB10(I3,NN-I3,I1)-str%DB30(I2-1,I3,21-I3)
           str%DB10(I3,I1,I2) = str%DA30(I1,I3)*2.D0
30         CONTINUE
        enddo
     enddo
  enddo
  !
  WRITE(6,*) ' ****CVCT5701**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,5)  ,K3=1,5)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5701
