!             CVCT5706            LEVEL=1        DATE=84.02.09
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5706                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-09                                     C
!*******************************************************************C
!OCL N1.GT.0,N2.GT.1,N3.GT.5,N4.GT.10
PROGRAM  CV5706
  IMPLICIT  REAL*8(A-B,D,O-Z),LOGICAL*4(L),COMPLEX*16(C)
  type st1
     real*8   DA10(20,20),DA20(20,20),DA30(20,20), &
          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20),DX,DY,DZ
     complex*16  CD10(20,20),CD20(20,20)
  end type st1
  type(st1) :: str
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.00/,str%DA20/400*2.0/,str%DA30/400*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     str%CD10,str%CD20/400*(-1.0,2.0),400*(3.0,-2.0)/
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/
  !
  DO  K=1,N3-1
     DO  I=N3,N5
        DO  J=2,N4
           ! str%DA10(I,J) = str%DA20(K,J-1)*str%DA30(I+N3,J+1)
           str%DA10(I,J) = str%DA20(K,J-1)*str%DA30(I,J+1)
           str%DA20(I,J) = str%DA30(K,J-1)+str%DA10(N4,J-1)
           ! str%DA30(I,J) = str%DA10(K,J-1)-str%DA20(I,J-1+N3)
           str%DA30(I,J) = str%DA10(K,J-1)-str%DA20(I,J)
10         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I=N4,N2,-1
     DO  J=I,2,-1
        DO  K=N5,N2,-1
           ! str%DB10(I,J,K+N1) = str%DB20(N2,I+1,K-1)+str%DB30(I,J,K-N2+1)
           str%DB10(I,J,K) = str%DB20(N2,I+1,K-1)+str%DB30(I,J,K-N2+1)
           str%DB20(I-N1,J,K) = str%DB10(N4,I+1,K) - str%DB30(N2-1,J,K)
           str%DB30(I,J+N1-1,K) = str%DB20(I,J,K) * str%DB10(I,J,K-1)
20         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I1=2,N4
     DO  I2=I1,2,-1
        DO  I3=I2,N5
           str%DX = str%DA10(I1,I2)+DIMAG(str%CD10(I1,I3))
           str%DY = str%DA20(I1,I3)*DIMAG(str%CD20(I1,I3))
           IF ( str%DX.GT.str%DY ) THEN
              str%DZ = str%DX + DREAL(str%CD10(I1-1,I3))
           ELSE
              str%DZ = str%DY + DREAL(str%CD20(I1-1,I3))
           ENDIF
           str%CD10(I2,I3) = DCMPLX(str%DX,DMAX1(str%DZ,str%DY))
           str%CD20(I2,I3) = DCMPLX(str%DY,DMIN1(str%DX,str%DZ))
30         CONTINUE
        enddo
     enddo
  enddo
  !
  WRITE(6,*) ' ****CVCT5706**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%CD10) ',((str%CD10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%CD20) ',((str%CD20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(K1,K2,K3),K1=1,10),K2=1,10) ,K3=1,5)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5706
