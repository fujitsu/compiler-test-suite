!             CVCT5405            LEVEL=2        DATE=84.10.17
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT5405                                   *C
!*  2. PURPOSE        :  MI METHOD TEST                             *C
!*                       . MI - BUSY ON EXIT                        *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  MIVECT                                     *C
!*  5. HISTORY        :  1984.10.12                                 *C
!********************************************************************C
PROGRAM CV5405
  type st1
     LOGICAL * 4 L1(10),L2(10),L3(10),L4(10),L5(10,10,10,10)
     LOGICAL * 4 LS1,LS2,LS3,LS4
     REAL    * 4 R1(10),R2(10),R3(10),R4(10),R5(10,10,10,10)
     REAL    * 4 RS1,RS2,RS3,RS4
  end type st1
  type(st1) :: str
  !
  DATA N/10/
  DATA str%L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  !
  WRITE(6,*) '***** CVCT5405 MI METHOD TEST PROGRAM *****'
  !
  ! DATA INIT
  !
  DO  I=1,10
     str%L2(I) = str%L1(I)
     str%L3(I) = .NOT.str%L2(I)
     str%L4(I) = str%L1(I)
     str%R1(I) = 1.
     str%R2(I) = str%R1(I)
     str%R3(I) = str%R2(I) + 1.
     str%R4(I) =  I
  enddo
99 CONTINUE
  !
  ! TEST NO. 1
  !
  DO  I1=1,N
     str%LS1 = str%L1(I1)
     DO  I2=1,N
        str%LS2 = str%L2(I2)
        DO  I3=1,N
           str%LS3 = str%L3(I3)
           DO  I4=1,N
              str%LS4 = str%L4(I4)
              DO  I5=1,N
                 str%L5(I2,I3,I4,I5) = str%LS1.OR.str%LS2.OR.str%LS3.OR.(.NOT.str%LS4)
              enddo
104           CONTINUE
              str%L4(I4) = .TRUE.
           enddo
103        CONTINUE
           str%L3(I3) = .FALSE.
        enddo
102     CONTINUE
        str%L2(I2) = .TRUE.
     enddo
101  CONTINUE
     str%L1(I1) = .TRUE.
  enddo
100 CONTINUE
  !
  WRITE(6,*) '+++++ TEST NO. 1 +++++'
  WRITE(6,*) str%LS1,str%LS2,str%LS3,str%LS4
  WRITE(6,*) str%L1,str%L2,str%L3,str%L4,str%L5
  !
  ! TEST NO. 2
  !
  DO  I1=1,N
     str%RS1 = str%R1(I1)
     DO  I2=1,N
        str%RS2 = str%R2(I2)
        DO  I3=1,N
           str%RS3 = str%R3(I3)
           DO  I4=1,N
              str%RS4 = str%R4(I4)
              DO  I5=1,N
                 str%R5(I2,I3,I4,I5) = str%RS1 + str%RS2 + str%RS3 - str%RS4
              enddo
204           CONTINUE
              str%R4(I4) = 1.
           enddo
203        CONTINUE
           str%R3(I3) = 2.
        enddo
202     CONTINUE
        str%R2(I2) = 2.
     enddo
201  CONTINUE
     str%R1(I1) = 0.
  enddo
200 CONTINUE
  !
  WRITE(6,*) '+++++ TEST NO. 2 +++++'
  WRITE(6,1) str%RS1,str%RS2,str%RS3,str%RS4
  WRITE(6,1) str%R1,str%R2,str%R3,str%R4,str%R5
  1 format(10f9.3)
  !
  !
  STOP
END PROGRAM CV5405
