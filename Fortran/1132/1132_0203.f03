
!             CVCT5700            LEVEL=1        DATE=84.02.03
!*******************************************************************C
!  1. PROGRAM NAME : CVCT5700                                       C
!  2. PURPOSE      : <F,G> SUBPHASE TEST FOR MI-METHOD              C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(5),ADV(EVL)                                C
!  5. HISTORY      : 1984-02-03                                     C
!*******************************************************************C
PROGRAM  CV5700
  IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
  type st1
     real*8 DA10(20,20),DA20(20,20),DA30(20,20)
     real*8 DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
     logical*4 LD10(20,20)
  end type st1
  type(st1) :: str

  !CCCCCCCCC
  !     DATA INITIALIZE
  !CCCCCCCCC
  DATA     str%DA10/400*1.0D0/,str%DA20/400*2.D0/,str%DA30/400*3.D0/
  DATA     str%DB10/8000*4.D0/,str%DB20/8000*5.D0/,str%DB30/8000*3.D0/
  DATA     str%LD10/400*.FALSE./
  DATA     N1/1/,N2/2/,N3/10/,N4/15/,NN/20/
  !
  DO  I=1,N3
     DO  J=1,10,N1
        DO  K=1,NN
           DO  II=1,N4,N2
              str%DA10(K,II) = str%DA20(K,J+N1)*str%DA30(II,II)
              str%DB10(K,J,II) = str%DB20(K,N3,II) + str%DB30(K,I,II)
              str%DA20(K,J) = str%DB10(K,J+N3,II+N2)-str%DB20(K,J,NN)
              str%DB20(K,J,II) = str%DA10(K,II) + str%DA30(I,J)
10            CONTINUE
           enddo
        enddo
     enddo
  enddo
  !
  DO  I=1,N3
     DO  J=I,N3
        DO  K=J,N3
           str%DA30(I,K) = str%DA30(K,I) + str%DA10(I,K)
           str%DB30(I,J,K) = str%DB30(K,N3,I)*str%DB20(I,J,K)
20         CONTINUE
        enddo
     enddo
  enddo
  !
  DO  I1=N2,N3
     DO  I2=2,15,N2
        DO  I3=2,N3,N2
           DX = DMAX1(str%DA10(I2,I3),str%DB10(I1,I2,I3))
           DY = DMAX1(str%DA20(I1,I3),str%DB20(I1,I2,I3))
           IF ( DX.GT.DY ) THEN
              str%LD10(I2,I3) = .TRUE.
              str%DB10(I1+N2,I2,I3) = DX
           ELSE
              str%LD10(I1,I3) = .NOT.str%LD10(I3,I3)
              str%DB20(I1,I2+N2,I3) = DX
           ENDIF
30         CONTINUE
        enddo
     enddo
  enddo
  !
  WRITE(6,*) ' ****CVCT5700**NO.01**** '
  WRITE(6,1) ' (str%DA10) ',((str%DA10(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA20) ',((str%DA20(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DA30) ',((str%DA30(K1,K2),K1=1,10),K2=1,10)
  WRITE(6,1) ' (str%DB10) ',(((str%DB10(K1,K2,K3),K1=1,10),K2=1,10),K3=1,5)
  WRITE(6,1) ' (str%DB20) ',(((str%DB20(K1,K2,K3),K1=1,10),K2=1,5) ,K3=1,5)
  WRITE(6,1) ' (str%DB30) ',(((str%DB30(K1,K2,K3),K1=1,10),K2=1,5) ,K3=1,5)
  WRITE(6,*) ' (str%LD10) ',((str%LD10(K1,K2),K1=1,20),K2=1,20)
  1 format(a,(8f10.5))
  STOP
END PROGRAM CV5700
