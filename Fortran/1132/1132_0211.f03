!             CVCT5710            LEVEL=1        DATE=84.09.18
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5710                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : MIVECT,ADV(EVL)                                C
!  5. HISTORY      : 1984-09-18                                     C
!*******************************************************************C
PROGRAM  CV5710
  IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
    type st1
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
  DATA     NN/15/
  !
  DO  I=1,JC5
     str%CD20(I,20) = (1.0,2.0)
     DO  J=1,JC5
        str%CD10(I,J) = str%CD20(I,J)-str%CD30(I,J)
        DO  K=1,NN
           DO  L=1,NN
              str%DB10(J,K,L) = str%DB20(J,K,L+1)+str%DB30(J,K+1,L+1)
              str%DB20(J,K,L) = DIMAG(str%CD30(K,L))-str%DB30(I,J,K)
           enddo
40         CONTINUE
           str%CD30(1,1) = str%CD30(1,1)+str%CD20(I,J)
        enddo
30      CONTINUE
        str%DA10(I,J) = str%DA20(I,J)/str%DA30(I,J)
     enddo
20   CONTINUE
     str%DA20(1,1) = str%DA20(1,1)+str%DA10(I,1)
  enddo
10 CONTINUE
  !
  WRITE(6,*) ' ***CVCT5710***NO.1***  '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%DA20) ',str%DA20(1,1)
  WRITE(6,1) ' (str%CD10) ',((str%CD10(I,J),I=1,10),J=1,10)
  WRITE(6,1) ' (str%CD20) ',(str%CD20(I,20),I=1,20)
  WRITE(6,1) ' (str%CD30) ',str%CD30(1,1)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(I,J,K),I=1,10),J=1,10),K=1,10)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(I,J,K),I=1,10),J=1,10),K=1,10)
  !
  DO  I1=1,NN
     DO  I2=1,NN
        DX = DIMAG(str%CD20(I1+1,I2))
        DY = DREAL(str%CD30(I1,I2+1))
        DO  I3=1,JC5
           str%CD10(I2,I3)= DCMPLX(DX,DY)
           DO  I4=1,JC5
              str%DB30(I2,I4,I3)=str%DB20(I2+1,I4,I3)-str%DA20(I4,I3)
              str%DB10(I4,I3,I2)=str%DB30(I2+1,I4,I3)+str%DA30(I4,I3)
           enddo
70         CONTINUE
           str%DA20(I1,I3)=DIMAG(str%CD10(I2,I3))-str%DA10(I1,I3)
60         str%DA30(1,I3) = DREAL(str%CD10(I1,I3))-str%DA10(I2,I3)
        enddo
50      CONTINUE
     enddo
  enddo
  WRITE(6,*) ' ****CVCT5710***NO.02**** '
  WRITE(6,1) ' (str%CD10) ',((str%CD10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',(str%DA20(1,K2),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10), K3=1,10)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(K1,K2,K3),K1=1,10),K2=1,10), K3=1,10)
  1 format(a,(8f12.3))
  STOP
END PROGRAM CV5710
