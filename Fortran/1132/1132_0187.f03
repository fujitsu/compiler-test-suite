!             CVCT5404            LEVEL=2        DATE=84.10.17
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT5404                                   *C
!*  2. PURPOSE        :  MI METHOD TEST                             *C
!*                       . MI - BUSY ON EXIT                        *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  MIVECT                                     *C
!*  5. HISTORY        :  1984.10.12                                 *C
!********************************************************************C
PROGRAM CV5404
  type st1
     REAL * 4 A1(10),A2(10),A3(10,10,10,10),S1,S2
  end type st1
  type(st1) :: str
  !
  DATA N/10/
  !
  WRITE(6,*) '***** CVCT5404 MI METHOD TEST PROGRAM *****'
  !
  ! DATA INIT
  !
  DO  I=1,10
     str%A1(I) = 1.
     str%A2(I) = 0.
99   CONTINUE
  enddo
  !
  !
  ! TEST NO. 1
  !
  DO  I1=1,N
     str$S1 = 1. + str%A1(I1)
     DO  I2=1,N
        str$S1 = str%A1(I1) + I2
        str%S2     = str%A2(I2) + str%A1(I1)
        DO  I3=1,N
           DO  I4=1,N
              str%A3(I1,I2,I3,I4) =  str$S1 + str%S2
103           CONTINUE
102           CONTINUE
101           CONTINUE
100           CONTINUE
           enddo
        enddo
     enddo
  enddo
  !
  WRITE(6,*) '+++ TEST NO. 1 +++'
  WRITE(6,1) str$S1,str%S2,str%A1,str%A3
  !
  ! TEST NO. 2
  !
  !
  DO  I1=1,N
     DO  I2=1,N
        str$S1 = str%A1(I2)
        DO  I3=1,N
           str%S2 = str%A2(I3)
           str%A2(I3) = str%S2
           DO  I4=1,N
              DO  I5=1,N
                 str%A3(I2,I3,I4,I5) = str$S1 + str%S2
              enddo
204           CONTINUE
              str%A1(I2) = str$S1
           enddo
        enddo
203     CONTINUE
202     CONTINUE
        str%A2(I2) = str%S2
201     CONTINUE
200     CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) '+++++ TEST NO. 2 +++++'
  WRITE(6,1) str$S1,str%S2,str%A1,str%A2,str%A3
  1 format(10f9.3)
  !
  STOP
END PROGRAM CV5404
