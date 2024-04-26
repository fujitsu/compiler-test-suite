      INTEGER*4 WORK(5)
      INTEGER*4 I1,J1,K1,L1,I2,J2   ,L2
     /         ,I3,J3,K3   ,I4,J4,K4
     /         ,I5   ,K5
      INTEGER*2          L3
      POINTER (PI1,I1),(PI2,I2),(PI3,I3),(PI4,I4),(PI5,I5)
      POINTER (PJ1,J1),(PJ2,J2),(PJ3,J3),(PJ4,J4)
      POINTER (PK1,K1),(PK3,K3),(PK4,K4),(PK5,K5)
      POINTER (PL1,L1),(PL3,L3)
         L2=4
      DO 1 I=1,5
 1       WORK(I)=I
        PI1=LOC(WORK(1))
        PI2=LOC(WORK(1))
        PI3=LOC(WORK(1))
        PI4=LOC(WORK(1))
        PI5=LOC(WORK(1))
        PJ1=LOC(WORK(2))
        PJ2=LOC(WORK(2))
        PJ3=LOC(WORK(2))
        PJ4=LOC(WORK(2))
        PL1=LOC(WORK(4))
        PL2=LOC(WORK(4))
        PL3=LOC(WORK(4))
        PK1=LOC(WORK(3))
        PK2=LOC(WORK(3))
        PK3=LOC(WORK(3))
        PK4=LOC(WORK(3))
        PK5=LOC(WORK(3))
        CALL SUB18(I1,J1,K1,L1)
        CALL SUB19(I2,J2   ,L2)
        CALL SUB20(I3,J3,K3,L3)
        CALL SUB21(I4,J4,K4   )
        CALL SUB22(I5   ,K5   )
        IF(I1 .EQ. 9 .AND. I2 .EQ. 9 .AND.
     /     I3 .EQ. 9 .AND. I4 .EQ. 9 .AND.
     /     I5 .EQ. 9                      ) THEN
          WRITE(6,*) '*** OK]] ***'
        ELSE
          WRITE(6,*) '*** NG?? ***'
          WRITE(6,*) I1,J1  ,K1  ,L1
          WRITE(6,*) I2,J2  ,'3 ',L2
          WRITE(6,*) I3,J3  ,K3  ,L3
          WRITE(6,*) I4,J4  ,K4  ,'4 '
          WRITE(6,*) I1,'2 ',K1  ,'4 '
        ENDIF
        STOP
        END
      SUBROUTINE SUB18(A,B,C,D)
      INTEGER*4 A,B,C,D,I
        DO 1800 I=1,5
 1800   A=B+C+D
        RETURN
        END
      SUBROUTINE SUB19(A,B,D)
      INTEGER*4 A,B,D,I
        DO 1900 I=1,5
 1900   A=B+3+D
        RETURN
        END
      SUBROUTINE SUB20(A,B,C,D)
      INTEGER*4 A,B,C,I
      INTEGER*2 D
        DO 2000 I=1,5
 2000   A=B+C+D
        RETURN
        END
      SUBROUTINE SUB21(A,B,C)
      INTEGER*4 A,B,C,I
        DO 2100 I=1,5
 2100   A=B+C+4
        RETURN
        END
      SUBROUTINE SUB22(A,C)
      INTEGER*4 A,C,I
        DO 2200 I=1,5
 2200   A=2+C+4
        RETURN
        END
