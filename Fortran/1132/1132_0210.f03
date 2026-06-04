!*******************************************************************C
!  1. PROGRAM NAME : CVCT5707                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!*******************************************************************C
!VOCL TOTAL, N1.GT.0,N2.GT.JC1,N3.GT.JC2,N4.GT.JC4,N5.GT.5
!OCL  N1.GT.0,N2.GT.1,N3.GT.2,N4.GT.10,N5.GT.5
PROGRAM  CV5707
  IMPLICIT  REAL*8(A-B,D,O-Z),LOGICAL*4(L),COMPLEX*16(C)
  type st1
     real*8   DA10(30,30),DA20(30,30),DA30(30,30), &
          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
     complex*16   CD10(20,20),CD20(20,20)
  end type st1
  type(st1) :: str
  PARAMETER  (JC1=1,JC2=2,JC3=3,JC4=10,JC5=20)
  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/900*1.00/,str%DA20/900*2.0/,str%DA30/900*3.0/
  DATA     str%DB10/8000*4.0/,str%DB20/8000*5.0/,str%DB30/8000*3.0/
  DATA     str%CD10,str%CD20/400*(-1.0,2.0),400*(3.0,-2.0)/
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,N5/20/
  !
  DO  K=1,N3-1
     DO  I=N3,N5
        DO  J=2,N4
           str%DA10(I,I) = str%DA10(I,I)*str%DA30(I+N3,J+1)
           str%DA20(K,K) = str%DA20(K,K)+str%DA10(I+N1,J-JC1)
           str%DA30(J,J) = str%DA30(J,J)-str%DA20(K+N2,J-1)
10         CONTINUE
        enddo
     enddo
  enddo
  !
!OCL  N4.GT.N2
  DO  I=N4,N2,-1
     DO  J=N3,2,-N1
        DO  K=N5,N2,-1
           str%DB10(I,I,K) = str%DB20(J+N1,J*JC2,K-1)+str%DB30(I,J,K-N2+1)
           str%DB20(J,J,K) = str%DB10(N4,I+1,K) - str%DB30(N2-1,J,K)
           str%DB30(I,K,K) = str%DB20(I,J,K) - str%DB10(I,J,K-1)
        enddo
     enddo
20   CONTINUE
  enddo
  !
  DO  I=JC1,JC5
     DO  J=JC1,JC5
        DO  K=JC3,N4
           DX = str%DB30(I,J,K) - DIMAG(str%CD20(I,J))
           DY = DMIN1(str%DB20(I,J,K),str%DB10(I,J,K+JC2))+DIMAG(str%CD10(I,J))
           IF ( DX .GT. DY ) THEN
              DZ = DX-str%DA10(I,J)
              str%DB20(I,J,K+2-N1) = DY
           ELSE IF ( DX .GT. DIMAG(str%CD20(I,J)) ) THEN
              DZ = DY*DREAL(str%CD20(I,J))
              str%DB10(I,J,K+N1) = DX
           ELSE
              DZ = 1.0
           ENDIF
           str%CD10(I,J) = DCMPLX(DX,DZ)
           str%CD20(I,J) = DCMPLX(DZ,DY)
        enddo
30      CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) ' ****CVCT5707**NO.01**** '
  WRITE(6,*) '### (str%DA10) ###'
  WRITE(6,99) ((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,*) '### (str%DA20) ###'
  WRITE(6,99) ((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,*) '### (str%DA30) ###'
  WRITE(6,99) ((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,*) '### (str%CD10) ###'
  WRITE(6,99) ((str%CD10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,*) '### (str%CD20) ###'
  WRITE(6,99) ((str%CD20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,*) '### (str%DB10) ###'
  WRITE(6,99) (((str%DB10(K1,K2,K3),K1=1,10),K2=1,10),K3=1,5)
  WRITE(6,*) '### (str%DB20) ###'
  WRITE(6,99) (((str%DB20(K1,K2,K3),K1=1,10),K2=1,10),K3=1,5)
  WRITE(6,*) '### (str%DB30) ###'
  WRITE(6,99) (((str%DB30(K1,K2,K3),K1=1,10),K2=1,10),K3=1,5)
99 FORMAT(5(1X,D14.7))
  STOP
END PROGRAM CV5707
