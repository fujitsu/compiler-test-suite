!             CVCT5712            LEVEL=1        DATE=84.09.20
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5712                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                C
!  5. HISTORY      : 1984-09-18                                     C
!*******************************************************************C
PROGRAM  CV5712
  IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
  type st1
     real*4 DX,DY,DZ
     real*8   DA10(20,20),DA20(20,20),DA30(20,20), &
          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
     complex*16   CD10(20,20),CD20(20,20),CD30(20,20)
  end type st1
  type(st1) :: str
  PARAMETER  (JC5=20)
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.00/,str%DA20/400*2.0/,str%DA30/400*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     str%CD10,str%CD20/400*(-1.0,2.0),400*(3.0,-2.0)/
  DATA     str%CD30/400*(2.0,0.10)/
  DATA     NN/14/,N1/4/
  !
  DO  I1=2,N1
     str%DX = DIMAG(str%CD10(I1,1))+DREAL(str%CD20(I1,NN))
     str%DY = DREAL(str%CD10(I1,NN))+DIMAG(str%CD30(I1,NN))
     str%DZ = MAX1(str%DX,str%DY)
     str%DX = SQRT(str%DZ)
     NX = I1
     DO  I2=2,NN
        NX=NX+1
        str%DA10(NX,I2)=str%DA20(I1,I1+1)-str%DA30(I2+1,I1-1)
        str%CD10(I1,NX)=DCMPLX(str%DX,str%DY)
        DO  I3=2,NN,2
           str%DB30(I1,I2,I3)=str%DB10(I1,I2,I3-1)-str%DA30(I1,I2)
           str%DB20(I1,I2,I3)=str%DB20(I1,I2,3)+DREAL(str%CD20(I1,I3))
           str%DB10(I1,I2,I3)=str%DB30(I1,I2,5)*str%DA10(I3,1)
        enddo
30      CONTINUE
        str%DA20(NX,I1)=str%DA30(I2,I1)-str%DA10(NX,I2)
     enddo
  enddo
20 CONTINUE
10 CONTINUE
  !
  WRITE(6,*) ' ***CVCT5712***NO.1***  '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD10) ',(str%CD10(I,1),I=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(I,J,K),I=1,10),J=1,10),K=1,10)
  !
  DO  J1=1,JC5
     DO  J2=1,JC5
        str%DA30(J1,J2)=DIMAG(str%CD10(J1,J2))-str%DA20(J1,J2)
        IF ( str%DA30(J1,J2).GT.5.0 ) str%DA10(J1,J2)=DIMAG(str%CD30(J1,J2))
        DO  J3=1,NN
           str%DB10(J1,J2,J1)=str%DB20(J1,J2,J2)+str%DB30(J1,J2,J3)
           str%DB20(J1,J2,J2)=str%DB10(J1,J2,J1)*str%DB30(J1,J2,J3)
        enddo
40      CONTINUE
        str%DB30(J1,J2,1) = DREAL(str%CD20(J1,J2))-str%DA30(J1,J2)
     enddo
  enddo
50 CONTINUE
  !
  WRITE(6,*) ' ***MVCT5712***NO.2*** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(I,J),I=1,10),J=1,10)
  WRITE(6,2) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,2) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB30) ',((str%DB30(I,J,1),I=1,10),J=1,10)
1 format(a,(15f8.3))
2 format(a,(8f15.5))
  STOP
END PROGRAM CV5712
