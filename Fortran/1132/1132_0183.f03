!             CVCT5400            LEVEL=1        DATE=84.10.17
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT5400                                   *C
!*  2. PURPOSE        :  MI METHOD TEST                             *C
!*                       . DATA DEPENDENCY                          *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  MIVECT                                     *C
!*  5. HISTORY        :  1984.10.09                                 *C
!********************************************************************C
PROGRAM CV5400

  type st1
     REAL * 4 R1(10),R2(10),R3(10),R4(10),R5(10),R6(10,10,10)
  end type st1
  type(st1) :: str
  !
  DATA N/10/
  !
  WRITE(6,*) '***** CVCT5400 MI METHOD TEST PROGRAM *****'
  !
  ! DATA INIT
  !
  DO  I=1,10
     str%R1(I) = 1.
     str%R2(I) = str%R1(I) + 1.
     str%R3(I) = str%R2(I) + 1.
     str%R4(I) = 0.
     str%R5(I) = str%R4(I) + str%R3(I) + str%R2(I)
  enddo
  !
  DO  I=1,10
     DO  J=1,10
        DO  K=1,10
           str%R6(I,J,K) = str%R1(I) + str%R2(J) + str%R3(K)
        enddo
     enddo
  enddo
  !
  !TEST NO. 1
  !
  DO  I1=1,N
     str%R1(I1) = I1
     str%R2(I1) = str%R1(I1) + I1
     DO  I2=1,N
        str%R3(I2) = str%R1(I1) + I2
        str%R4(I2) = str%R2(I1) + str%R4(I2)
        DO  I3=1,N
           str%R5(I3) = str%R1(I1)+str%R2(I1)+str%R3(I2)+str%R4(I2)
           str%R6(I1,I2,I3) = str%R5(I3)+I3+str%R1(I1)+I1
        enddo
     enddo
  enddo
  !
  WRITE(6,*) '+++ TEST NO. 1 +++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4,str%R5,str%R6
  !
  ! TEST NO. 2
  !
  DO  I1=1,N
     DO  I2=1,N
        DO  I3=1,N
           str%R1(I3)=str%R2(I3)+I1
           str%R2(I3)=str%R3(I2)+str%R4(I2)
           str%R6(I1,I2,I3)=str%R1(I3)+str%R2(I3)+I1
        enddo
        str%R3(I2)=1. + I2
        str%R4(I2)=str%R3(I2) + 1.
     enddo
     str%R5(I1)=1.
  enddo
  !
  WRITE(6,*) '+++++ TEST NO. 2 +++++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4,str%R5,str%R6
  !
  ! TEST NO. 3
  !
  DO  I1=1,N
     str%R1(I1) = 1.
     str%R2(I1) = str%R1(I1) + I1
     DO  I2=1,N
        str%R3(I2)=str%R1(I1) + I2
        str%R4(I2)=str%R2(I1)+str%R3(I2)
        DO  I3=1,N
           str%R5(I3)=str%R1(I1)+str%R2(I1)+I3
           str%R6(I1,I2,I3)=str%R3(I2)+str%R1(I1)
        enddo
        str%R3(I2)=str%R1(I1)+str%R2(I1)
     enddo
     str%R1(I1)=str%R1(I1)+I1
     str%R2(I1)=str%R2(I1)+str%R1(I1)
  enddo
  !
  WRITE(6,*) '+++++ TEST NO. 3 +++++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4,str%R5,str%R6
  !
  ! TEST NO. 4
  !
  DO  I1=1,N
     DO  I2=1,N
        str%R1(I2)=I1+I2
        str%R2(I2)=str%R1(I2)+str%R1(I2)
        DO  I3=1,N
           str%R3(I2)=str%R3(I2)+I3
           str%R6(I1,I2,I3)=str%R1(I2)+1.
        enddo
     enddo
  enddo
  !
  WRITE(6,*) '+++++ TEST NO. 4 +++++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4,str%R5,str%R6
1 format(10f9.3)
  !
  !
  STOP
END PROGRAM CV5400
