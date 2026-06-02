!             CVCT3143            LEVEL=2        DATE=87.04.21
!********************************************************************C
!  1. PROGRAM NAME : CVCT3143                                        C
!  2. PURPOSE      : TAKE IN THE EXPRESSION TO SUBSCRIPT             C
!  3. RESULT       :                                                 C
!  4. ENVIRONMENT  : VPL(3),ADV(EVL)                                 C
!  5. HISTORY      : 1983-06-06                                      C
!********************************************************************C
module mod
   IMPLICIT  REAL*8(D),LOGICAL*4(L)
   type TAG
      REAL*8 :: DA10(20) = 4.0
   end type TAG
   type(TAG) st
   COMMON  /BLK1/  DA20(20),DA30(-20:-1),DA40(-20:-1)
   COMMON  /BLK2/  DB10(-10:10),DB20(-10:10),DB30(-10:10)
   COMMON  /BLK3/  LD10(20),LD20(20),LD30(20)
   DATA   DA20,DA30,DA40/20*4.D0,20*3.D0,20*5.D0/
   DATA   DB10,DB20,DB30/21*2.D0,21*6.D0,21*3.D0/
   DATA   LD10,LD20,LD30/60*.FALSE./
   DIMENSION       DC10(20),DC20(20)
   EQUIVALENCE  (DA30(-20),DC10(1)),(DB10(-10),DC20(1))
end module
PROGRAM  CV3143
  use mod
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  EQUIVALENCE  (IT1,IN1),(IT2,IN2)
  DATA     IT1/1/,IT2/2/,IT4/4/,IT5/5/
  !
  DO I=2,20,2
     LD10(I) = .TRUE.
     LD20(I-1) = .TRUE.
  END DO
  IT1 = 10
  DO I=2,10
     LX = LD10(I+10)
     LY = LD30(I)
     NI = I+IN1
     IT1 = I-1
     IF ( LX .OR. LY ) THEN
        IP = -I
        DO J=2,IT4*IT5,2
           JP1 = J-10
           JP2 = -J
           DA30(JP2) = st%DA10(J) * 2.D0 - DB20(JP1)
           DB10(JP1) = DA30(1-J) - DB30(IP)
        END DO
     ELSE
        LD10(I) = .NOT.LX  .OR. LY
        DX = 0.0D0
        IN2 = -I
        DO J=1,9
           DB20(I) = DB20(I) + DB20(IN2+10)
           LX = .NOT. LD30(J)
           LY = .NOT. LD20(J+10)
           IF ( LX .AND. LY ) THEN
              DX = DMAX1(DX,DA30(-J))
           ELSE
              DA20(J) = DA20(J) + DC10(NI)
           ENDIF
           DB10(-J) = DC20(J+10) * 2.D0 - st%DA10(IT1)
           st%DA10(I) = st%DA10(I) + st%DA10(1-IN2)
           IN2 = IN2 -1
        END DO
     ENDIF
     LD30(I) = .NOT.LX .AND. .NOT.LY
  END DO
  WRITE(6,*) ' *** CVCT3143 *** NO.1 *** '
  WRITE(6,*) ' (DA10) ',st%DA10
  WRITE(6,*) ' (DB10) ',DB10
  WRITE(6,*) ' (DA20) ',DA20
  WRITE(6,*) ' (DB20) ',DB20
  WRITE(6,*) ' (DA30) ',DA30
  WRITE(6,*) ' (LD10) ',LD10
  WRITE(6,*) ' (LD30) ',LD30
  STOP
END PROGRAM CV3143
