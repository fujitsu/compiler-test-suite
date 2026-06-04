module mmm
  type st1
     REAL * 4 R1(20),R2(20),R3(20),R4(20,20,20)
  end type st1
  type(st1) :: str
end module mmm
!             CVCT5407            LEVEL=1        DATE=84.10.17
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT5407                                   *C
!*  2. PURPOSE        :  MI METHOD TEST                             *C
!*                          MI - DOP                                *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  MIVECT                                     *C
!*  5. HISTORY        :  1984.10.17                                 *C
!********************************************************************C
PROGRAM CV5407
  use mmm
  DATA N/10/,M/10/
  !
  WRITE(6,*) '***** CVCT5407 * MI METHOD TEST PROGRAM ***'
  !
  ! DATA INIT
  !
  DO  I=1,20
     str%R1(I) = I
     str%R2(I) = str%R1(I) + 1.
     str%R3(I) = 1.
  enddo
99 CONTINUE
  DO  I1=1,20
     DO  I2=1,20
        DO  I3=1,20
           str%R4(I1,I2,I3) = I1+I2+I3
        enddo
     enddo
  enddo
91 CONTINUE
  !
  !  NO. 1
  !
  DO  I1=1,N
     str%R1(I1) = str%R1(I1+I1) + I1
     DO  I2=1,M
        str%R2(I2) = str%R2(I2+I2) + I2
        DO  I3=1,M
           str%R3(I3) = str%R3(I3+I3)  + I3
           DO  I4=1,N
              str%R4(I4,I3,I2) = str%R4(I4+I1,I3+I2,I2+I3) &
                   + str%R1(I1) + str%R2(I2) + str%R3(I3)
103           CONTINUE
102           CONTINUE
101           CONTINUE
           enddo
        enddo
     enddo
  enddo
100 CONTINUE
  !
  WRITE(6,*) '+++++ TEST 1 ++++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4
  !
  !
  ! NO. 2
  !
  MM = 1
  !
  DO  I1=MM,M
     DO  I2=2,M
        DO  I3=1,M
           DO  I4=I3,10
              str%R4(I2+MM,I3+1,I4) = str%R4(I2+M,I3+MM,I4+M) &
                   + str%R1(I1+I1) + str%R2(I2+I2) + str%R3(I3+I3)
           enddo
203        CONTINUE
           str%R3(I3) = 1.
        enddo
202     CONTINUE
        str%R2(I2) = 2.
     enddo
201  CONTINUE
     str%R1(I1) = 4.
  enddo
200 CONTINUE
  !
  WRITE(6,*) '+++++ TEST 2 +++'
  WRITE(6,1) str%R4,str%R1,str%R2,str%R3
  !
  ! NO. 3
  !
  DO  I1=1,M
     str%R1(I1) = str%R1(I1+I1) + 1.
     DO  I2=1,M
        str%R2(I2) = str%R2(I2+I2) + 2.
        DO  I3=2,10
           str%R3(I3) = str%R3(I3+I3) + 3.
           DO  I4=2,10
              str%R4(I2,I3,I4) = str%R4(I2+I1,I3+I2,I4+I3) &
                   + str%R1(I1) + str%R2(I2) + str%R3(I3)
           enddo
303        CONTINUE
           str%R3(I3) = str%R3(I3) + str%R2(I2)
        enddo
302     CONTINUE
        str%R2(I2) = str%R3(I3) + str%R2(I2)
     enddo
301  CONTINUE
     str%R1(I1) = str%R1(I1) + str%R2(I2)
  enddo
300 CONTINUE
  !
  WRITE(6,*) '+++ TEST 3 +++'
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4
  1 format(10f9.3)
  !
  !
  STOP
END PROGRAM CV5407
