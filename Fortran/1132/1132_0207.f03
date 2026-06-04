!             CVCT5704            LEVEL=1        DATE=84.02.09
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5704                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-06                                     C
!*******************************************************************C
!OCL  N1.GT.0,N2.GT.1,N3.GT.5,N4.GT.5,N5.GT.10
PROGRAM  CV5704
  !      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  type st1
     real*4   DA10(20,20),DA20(20,20),DA30(20,20)
     real*4   DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
  end type st1
  type(st1) :: str
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.0D0/,str%DA20/400*2.D0/,str%DA30/400*3.D0/
  DATA     str%DB10/8000*4.D0/,str%DB20/8000*5.D0/,str%DB30/8000*3.D0/
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/
  !
  DO  I=1,N4
!OCL N5.GT.I
     DO  J=I,N5
        str%DA10(I,J) = str%DA20(N5,J)*str%DA30(N4,I)
        str%DA20(J,I) = str%DA10(I,I)+ str%DA30(I,J)
10      CONTINUE
     enddo
  enddo
  !
  DO  K1=N4,5,-1
     DO  K2=K1,1,-1
        str%DA30(K1,K2) = str%DA10(K1,K2)*str%DB10(K1,K2,K2)
        str%DB10(K2,N4,K1) = str%DB20(N1,K2,K1)- str%DA20(K1,K2)
        str%DB20(K1,K1,K2) = str%DA30(N4,K1) + str%DB30(K1,K2,N2)
20      CONTINUE
     enddo
  enddo
  !
  DO  I1=N4,N2,-1
!OCL I1.GT.N1,N5.GT.I1
     DO  I2=I1,N5
        str%DA10(I2,N1) = str%DA10(I1,N2) - str%DB30(N1,N1,I2)
        str%DB30(N1,I2,I1) = str%DA20(I1,I2)*str%DA30(I2,I1)
        str%DA20(I1,I2-1) = str%DB10(I1,I1,I2)
30      CONTINUE
     enddo
  enddo
  !
  DO  J1=N3,1,-1
     DO  J2=J1,N5
        str%DB10(J2,N2,N1) = str%DB30(J2,N3,N2)-str%DA10(J1,J2)
        str%DA20(J2,N3) = str%DA30(J2,J1) + str%DB10(J1,N1,N2)
        str%DB30(J1,N1,N1) = str%DB30(J1,N1,N1)+str%DA20(J1,N3)
40      CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) ' ****CVCT5704**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10)  ,K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(K1,K2,K3),K1=1,10),K2=1,5)   ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(K1,K2,K3),K1=1,10),K2=1,5)   ,K3=1,5)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5704
