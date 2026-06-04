!             CVCT5410            LEVEL=1        DATE=84.10.20
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT5410                                   *C
!*  2. PURPOSE        :  MI METHOD TEST                             *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  MIVECT                                     *C
!*  5. HISTORY        :  1984.10.19                                 *C
!********************************************************************C
PROGRAM CV5410
  type st1
     REAL * 4 S1,S2,S3
     REAL * 4 A1(20),A2(20),A3(20)
     REAL * 4 A6(20,22,20)
     REAL * 4 SA1(20),SA2(20),SA3(20)
     LOGICAL * 4 L1(20),L2(20)
  end type st1
  type(st1) :: str
  !
  DATA N/10/,M/11/
  !
  ! DATA INIT
  !
  DO  I=1,20
     str%A1(I)=I
     str%A2(I)=str%A1(I)+1.
     str%A3(I)=str%A2(I)+1.
     str%SA1(I)=str%A1(I)
     str%SA2(I)=str%A2(I)
     str%SA3(I)=str%A3(I)
     str%L1(I)=.TRUE.
     str%L2(I)=.FALSE.
     DO  I1=1,22
        DO  I2=1,20
           str%A6(I,I1,I2)=I2
        enddo
     enddo
  enddo
  !
  DO  I1=1,N
     S1=str%A1(I1)+I1
     DO  I2=1,M
        S2=str%A2(I2)+I2
        DO  I3=1,N
           S3=str%A3(I3)+I3
           IF (S3.GT.0) THEN
              str%A6(I1,I2,I3) = str%A1(I1)+str%A2(I2)+str%A3(I3) &
                   +str%A6(I1+I1,I2+I2,I3)
              IF (S3.EQ.0) GOTO 102
              S3=str%A1(I1) + I1 + I2 + I3
           ENDIF
           S3=S3+str%A6(I1,I2,I3)
102     CONTINUE
        enddo
        str%A2(I2)=S2+S2
     enddo
101  CONTINUE
     str%A1(I1)=S1+S1
  enddo
100 CONTINUE
  !
  WRITE(6,1) S1,S2,S3,str%A6
  !
  !
  DO  I1=1,N
     str%SA1(1)=str%A1(I1)+I1
     DO  I2=1,M
        str%SA2(1)=str%A2(I2)+I2
        DO  I3=1,N
           str%SA3(1)=str%A3(I3)+I3
           IF (str%L1(I1)) THEN
              str%A6(I1,I2,I3) = str%A1(I1)+str%A2(I2)+str%A3(I3)
              IF (str%L2(I2)) GOTO 202
              str%SA3(1)=str%A1(I1) +str%A2(I2)+str%A3(I3) +I1+I2+I3
           ENDIF
202        CONTINUE
        enddo
201     CONTINUE
     enddo
     str%SA1(1)=str%SA1(1)+str%A1(I1)
  enddo
200 CONTINUE
  !
  WRITE(6,1) str%SA1,str%SA2,str%SA3,str%A6
1 format(10f9.3)
  !
  STOP
END PROGRAM CV5410
