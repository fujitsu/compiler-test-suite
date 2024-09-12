      PROGRAM MAIN
      IMPLICIT  REAL*8(D),LOGICAL*4(L)
      COMMON  /BLK1/  DA10(20),DA20(20),DA30(-20:-1),DA40(-20:-1)
      COMMON  /BLK2/  DB10(-10:10),DB20(-10:10),DB30(-10:10)
      COMMON  /BLK3/  LD10(20),LD20(20),LD30(20)
      DIMENSION       DC10(20),DC20(20)

      EQUIVALENCE  (DA30(-20),DC10(1)),(DB10(-10),DC20(1))
      EQUIVALENCE  (IT1,IN1),(IT2,IN2),(LX,LZ),(LY,LW)
      DATA     IT1/1/,IT2/2/,IT4/4/,IT5/5/

      DO 5 I=2,20,2
        LD10(I) = .TRUE.
        LD20(I-1) = .TRUE.
 5    CONTINUE
      IT1 = 10
      DO 10 I=2,10
        LX = LD10(I+10)
        LY = LD30(I)
        NI = I+IN1
        IT1 = I-1
        IF ( LX .OR. LY ) THEN
          IP = -I
          DO 20 J=2,IT4*IT5,2
            JP1 = J-10
            JP2 = -J
            DA30(JP2) = DA10(J) * 2.D0 - DB20(JP1)
            DB10(JP1) = DA30(1-J) - DB30(IP)
 20       CONTINUE
        ELSE
          LD10(I) = .NOT.LZ  .OR. LW
          DX = 0.0D0
          IN2 = -I
          DO 30 J=1,9
            DB20(I) = DB20(I) + DB20(IN2+10)
            LX = .NOT. LD30(J)
            LW = .NOT. LD20(J+10)
            IF ( LX .AND. LW ) THEN
              DX = DMAX1(DX,DA30(-J))
            ELSE
              DA20(J) = DA20(J) + DC10(NI)
            ENDIF
            DB10(-J) = DC20(J+10) * 2.D0 - DA10(IT1)
            DA10(I) = DA10(I) + DA10(1-IN2)
            IN2 = IN2 -1
 30       CONTINUE
        ENDIF
        LD30(I) = .NOT.LX .AND. .NOT.LW
 10   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DB10) ',DB10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DB20) ',DB20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (LD30) ',LD30
      STOP
      END
      BLOCK DATA   INIT
      IMPLICIT  REAL*8(D),LOGICAL*4(L)
      COMMON  /BLK1/  DA10(20),DA20(20),DA30(-20:-1),DA40(-20:-1)
      COMMON  /BLK2/  DB10(-10:10),DB20(-10:10),DB30(-10:10)
      COMMON  /BLK3/  LD10(20),LD20(20),LD30(20)
      DATA   DA10,DA20,DA30,DA40/40*4.D0,20*3.D0,20*5.D0/
      DATA   DB10,DB20,DB30/21*2.D0,21*6.D0,21*3.D0/
      DATA   LD10,LD20,LD30/60*.FALSE./
      END
