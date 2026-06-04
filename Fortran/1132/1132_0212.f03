!             CVCT5711            LEVEL=1        DATE=84.09.18
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5711                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                C
!  5. HISTORY      : 1984-09-18                                     C
!*******************************************************************C
PROGRAM  CV5711
  IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
  type st1
     real*8   DA10(20,20),DA20(20,20),DA30(20,20),DX,DY, &
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
  DATA     NN/15/
  !
  DO  I1=2,NN
     str%DA10(I1,1) = str%DA20(I1+1,NN)-DIMAG(str%CD20(NN,I1+1))
     DO  I2=2,NN
        str%DA20(I1,I2) = str%DA20(I2,I1) - DIMAG(str%CD20(I2+1,I1-1))
        DO  I3=2,NN
           str%DB10(I1,I3,I1) = str%DB20(I3-1,I2,I1)  + str%DA30(NN,I2)
           str%DB20(I3,I2,I1) = str%DB10(I1+1,I3,I1-1)-str%DA20(2,I2)
30         CONTINUE
        enddo
        str%DA30(I1,I2) = str%DA30(I2,I1) * str%DB10(I1,I2,I1-1)
        str%CD20(I2,I1) = str%CD10(I1+1,I2-1) - str%CD30(I1,I2)
     enddo
20   CONTINUE
     str%CD10(I1,1) = str%CD20(NN,I1)/(2.0,2.0)
  enddo
10 CONTINUE
  !
  WRITE(6,*) ' ***CVCT5711***NO.1***  '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA20) ',str%DA20(1,1)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD10) ',(str%CD10(I,1),I=1,10)
  WRITE(6,1) ' (str%CD20) ',((str%CD20(I,J),I=1,20),J=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  !
  DO  J1=2,NN
     str%DX = str%DA20(J1,1)/2.0
     str%DY = str%DA10(J1,1)-str%DA30(J1,1)
     str%CD10(J1,NN) = DCMPLX(str%DX,str%DY)
     DO  J2=2,J1
        str%CD20(J2,J1) = str%CD30(J1,J1)-str%CD10(J2,NN)
        DO  J3=2,J2-1
           str%DB30(J3,J2,J1) = str%DB20(J2,J2,J1)  * str%DB10(J3,J2,J1)
           str%DB20(J3,J2,J1) = str%DB30(J3,J1,J1+1)- str%DB10(J3,J2,J1)
        enddo
70      CONTINUE
        str%CD30(J2,J1) = str%CD20(J2-1,J1)
60      CONTINUE
     enddo
     str%DA10(J1,1) = DMIN1(str%DA20(J1,1),str%DA20(J1,1))
50   CONTINUE
  enddo
  !
  WRITE(6,*) ' ****CVCT5711***NO.02**** '
  WRITE(6,1) ' (str%CD10) ',(str%CD10(I,15),I=1,10)
  WRITE(6,1) ' (str%CD20) ',((str%CD20(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD30) ',((str%CD30(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA10) ',(str%DA10(I,1),I=1,15)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(I,J,K),I=1,10),J=1,10),K=1,10)
1 format(a,(10f11.5))
  STOP
END PROGRAM CV5711
