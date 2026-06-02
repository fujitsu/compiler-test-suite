!             CVCT5715            LEVEL=1        DATE=84.09.19
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5715                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                C
!  5. HISTORY      : 1984-09-19                                     C
!*******************************************************************C
PROGRAM  CV5715
  IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
  type st1
     real*4   DA10(20,20),DA20(20,20),DA30(20,20), &
       DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
     complex*8   CD10(20,20),CD20(20,20),CD30(20,20)
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
  DATA     NN/14/,N1/1/
  !
  DO  I1=1,NN
     IL1=I1+N1+1
     IL2=I1-N1+1
     DO  I2=2,NN
        str%DA10(IL1,I2)= REAL(str%CD30(I1,I2+1))
        str%DA20(IL1,I2)= IMAG(str%CD30(I1+1,I2))
        DO  I3=2,NN
           DO  I4=2,NN
              str%DB10(I2,I3,I4)= str%DB30(I2,I3,I4)-str%DA20(IL2,I4)
              str%DB20(I2,I3,I4)= str%DB30(I2,I3,I4)-str%DA10(IL2,I4)
30            CONTINUE
           enddo
        enddo
        str%DA30(IL1,I2)=str%DB10(I2,I3,2)
        DX = IMAG(str%CD10(I1,I2))+str%DA10(IL1,I2+1)
        DY = REAL(str%CD20(I1,I2))+str%DA20(IL1,I2-1)
        IF ( DX-DY ) 20,21,22
22      str%CD30(I1,I2) = CMPLX(DX,DY)
        GOTO 20
21      str%DA30(IL1,I2)= DMIN1(DX,DY)
20      CONTINUE
     enddo
  enddo
10 CONTINUE
  !
  WRITE(6,*) ' ***CVCT5715***NO.1***  '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD30) ',((str%CD30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  !
  DO  J1=2,NN
     DX = IMAG(str%CD10(J1,NN))-str%DA10(J1,NN)
     DY = REAL(str%CD20(J1,NN))-str%DA20(J1,NN)
     IF ( DX.GT.DY ) THEN
        DZ = REAL(str%CD30(J1,NN))
     ELSE
        DZ = IMAG(str%CD30(J1,NN))
     ENDIF
     DO  J2=2,NN
        str%CD10(J1,J2) = CMPLX(DX,DY)
        str%CD20(J1,J2) = CMPLX(DY,DZ)
        str%DA10(J1-1,J2)= DMIN1(DX,DY)+DZ
        IF ( str%DA10(J1,J2).GT.str%DA30(J1,J2) ) DZ = 0.0
        str%CD30(J1,J2) = CMPLX(DZ,DX)
        DO  J3=2,NN
           str%DB10(J1,J2,J3) = str%DB20(J1,J2,J3)-DX*str%DA10(J1,J3)
           str%DB20(J1,J2,J3) = str%DB30(J1,J2,J3)-DY*str%DA20(J1-1,J3)
           str%DB30(J1,J2,J3) = str%DB10(J1,J2,J3)-DZ*str%DA30(J1+1,J3)
70         CONTINUE
        enddo
        str%DA20(J1,J2) = MAX(str%DA20(J1,J2+1),DX)
        str%DA30(J1,J2) = MAX(str%DA30(J1,J2+1),DY)
60      CONTINUE
50      CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) ' ***MVCT5715***NO.2*** '
  WRITE(6,1) ' (str%DA20) ',((str%DA20(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD10) ',((str%CD10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD20) ',((str%CD20(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD30) ',((str%CD30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(I,J,K),I=1,10),J=1,10),K=1,10)
1 format(a,(12f10.5))
  !
  STOP
END PROGRAM CV5715
