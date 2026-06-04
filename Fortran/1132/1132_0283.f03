!             CVCT6119            LEVEL=2        DATE=83.12.06
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6119                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . IF IND                                   *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  DEFAULT                                    *C
!*  5. HISTORY        :  1983.12.6                                  *C
!********************************************************************C
!
PROGRAM CV6119
  type st1
     real SOL(144),SOLO2(22),SOLO3(144),SOLH2O(14),SOLN2O(37)
     real ABO2(144),ABO3(144),ABH2O(144),ABN2O(144),ABN2O5(144)
  end type st1
  type(st1) :: str
  !
  WRITE(6,9996)
9996 FORMAT(1H ,'  CVCT6119    *** IF IND *** ')
  !
  DO  I=1,144
     str%SOL(I) = FLOAT(I)
     str%ABO3(I) = I+1
     str%ABO2(I) = I-1
     str%ABH2O(I)=I*2
     str%ABN2O(I)=I+3
     str%ABN2O5(I)=I*3
  enddo

  DO  M=1,144
     str%SOLO3(M)=str%SOL(M)*str%ABO3(M)
     IF(M.GT.22) GO TO 611
     str%SOLO2(M)=str%SOL(M)*str%ABO2(M)
611  IF(M.GT.14) GO TO 612
     str%SOLH2O(M)=str%SOL(M)*str%ABH2O(M)
612  IF(M.GT.37) GO TO 613
     str%SOLN2O(M)=str%SOL(M)*str%ABN2O(M)
613  IF(M.GT.50) GO TO 6
6    CONTINUE
  enddo
  !
  WRITE(6,*) str%SOLO2
  STOP
END PROGRAM CV6119
