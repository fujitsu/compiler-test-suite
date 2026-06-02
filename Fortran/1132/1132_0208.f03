!             CVCT5705            LEVEL=1        DATE=84.02.11
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5705                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-09                                     C
!*******************************************************************C
!OCL  N1.GT.0,N2.GT.1,N3.GT.5,N4.GT.10
PROGRAM  CV5705
  IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  type st1
     real*8   DA10(20,20),DA20(20,20),DA30(20,20), &
          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
  end type st1
  type(st1) :: str
  PARAMETER  (JC2=2)
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.00/,str%DA20/400*2.0/,str%DA30/400*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/
  !
!OCL  N1.GT.0,N2.GT.1,N3.GE.10,N4.GE.15
  DO  I=14-N1,5,-1
!OCL  N4.GT.N2
     DO  J=N2,N4
        str%DA10(I,J) = str%DA20(I,J-1)*str%DA30(I,N4)
        str%DA20(I,J) = str%DA10(N3+5,J+1)+str%DA30(N4,J-1)
        str%DA30(N4,J)= str%DA10(1+4+N3,N2)-str%DB10(I,J,N1)
10      CONTINUE
     enddo
  enddo
  !
!OCL  N3.GT.N2,N4.GT.N2,N5.GT.N2
  DO  I1=N4,N2,-1
!OCL  N5.GT.N4,N4.GT.N3,N5.GT.N3
     DO  I2=2,N3
        DO  I3=N5,N2,-1
           str%DB10(I1,I2,I3) = str%DB20(N4,N3,I3)*str%DA10(I1,I3)
           str%DB20(I1,I2,I3) = str%DB10(I1,I2,I3)+str%DB30(N3,I2,I3-1)
           str%DB30(I1,I2,I3) = str%DB20(N4,JC2,N5)+str%DB10(N4,I2,I3)
        enddo
     enddo
  enddo
20 CONTINUE
  !
  WRITE(6,*) ' ****CVCT5705**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5705
