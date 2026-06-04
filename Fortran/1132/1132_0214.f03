!             CVCT5713            LEVEL=1        DATE=84.09.19
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5713                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                C
!  5. HISTORY      : 1984-09-19                                     C
!*******************************************************************C
PROGRAM  CV5713
  IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
  type st1
     real*8 DX,DY,DZ
     real*4  DA10(20,20),DA20(20,20),DA30(20,20),&
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
  DATA     NN/14/
  !
  DO  I1=1,NN
     str%DA10(I1,I1) = DFLOAT(I1)
     DO  I2=1,NN
        N2=I2+1
        str%DA20(N2,I1) = str%DA30(I1,I2+1)-str%DA10(I1,1)
        DO  I3=N2,NN
           str%DX = IMAG(str%CD10(I1,I3))+REAL(str%CD20(I2,I3))
           str%DY = REAL(str%CD10(I1,I3))-IMAG(str%CD30(I2,I3))
           str%CD10(I1,I3) = CMPLX(str%DX,str%DY)
           DO  I4=2,NN
              str%DB10(I4,I3,I1) = str%DX-str%DB20(I4,I2,I1)*str%DB30(I4,I3,I2)
              str%DB20(I4,I3,I1) = str%DY+str%DB10(I4,I2,I1)*str%DB30(I4,I3,I2)
           enddo
40         CONTINUE
           str%DZ = REAL(str%CD10(I1,I2))+IMAG(str%CD10(I1,I2))
           str%DZ = ABS(str%DZ)
           str%DB30(2,I3,I2) = SQRT(str%DZ)
        enddo
30      CONTINUE
        str%DA30(I1,I2) = str%DA10(I1,I1+1) - str%DA20(1,I2)
     enddo
  enddo
20 CONTINUE
10 CONTINUE
  !
  WRITE(6,9999) ' ***CVCT5713***NO.1***  '
  WRITE(6,9999) ' (str%DA10) ',(str%DA10(I,I),I=1,10)
  WRITE(6,9999) ' (str%DA20) ',((str%DA20(I,J),I=1,10),J=1,10)
  WRITE(6,9999) ' (str%DA30) ',((str%DA30(I,J),I=1,10),J=1,10)
  WRITE(6,9999) ' (str%CD10) ',((str%CD10(I,J),I=1,10),J=1,10)
  WRITE(6,9999) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,9999) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,9999) ' (str%DB30) ',((str%DB30(2,J,K),J=1,10),K=1,10)
  !
  N1 = NN/2
  DO  J1=2,N1
     str%CD20(N1,J1) = str%CD10(N1,J1)
     N2=J1+1
     DO  J2=2,NN
        str%DX = str%DA10(J2,N2) - str%DA20(J1,J2)
        str%DY = str%DA10(J2,N2) + str%DA30(N1,J2)
        str%CD30(N2,J2) = DCMPLX(str%DX,str%DY)
        N3 = J2-1
        DO  J3=2,NN
           str%DB30(J1,J2,J3) = str%DB20(J1,N3,J3) - str%DB10(J1,J2,J3)
           str%DB20(J1,J2,J3) = str%DB30(J1,N3,J3) + str%DB10(J3,J2,J1)
           str%DA10(J3,J1) = IMAG(str%CD30(J1,J3))-REAL(str%CD20(1,J3))
        enddo
70      CONTINUE
        IF ( str%DA10(N3,N2).GT.5.0 ) THEN
           str%CD10(J1,J1) = str%CD10(J1,J1) + str%CD30(J1,N3)
        ENDIF
     enddo
  enddo
60 CONTINUE
50 CONTINUE
  !
  WRITE(6,9999) ' ***CVCT5713***NO.2*** '
  WRITE(6,9999) ' (str%CD10) ',(str%CD10(I,I),I=1,20)
  WRITE(6,9999) ' (str%CD20) ',(str%CD20(N1,J),I=1,20)
  WRITE(6,9999) ' (str%CD30) ',((str%CD30(I,J),I=1,10),J=1,10)
  WRITE(6,9999) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,9999) ' (str%DB30) ',(((str%DB30(I,J,K),I=1,10),J=1,10),K=1,10)
9999 format(a,(8f14.5))
  !
  STOP
END PROGRAM CV5713
