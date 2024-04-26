      PROGRAM MAIN
      COMMON H,PP,A3D
      COMMON T(50,50),B(2,3),CM(3,3),LL(3)
      COMMON RM(3,3)
      INTEGER H
      CALL INIT
      DO 61 II=1,3
       DO 60 JJ=1,3
   60 CM(II,JJ)=A3D*(B(1,II)*B(1,JJ)+B(2,II)*B(2,JJ))+PP*RM(II,JJ)
   61 CONTINUE
      DO 71 II=1,3
      DO 70 JJ=1,3
        M=LL(II)
        H=LL(JJ)
        T(M,H)=T(M,H)+CM(II,JJ)
   70 CONTINUE
   71 CONTINUE
      
      WRITE(6,*) ((T(I,J),I=1,50,10),J=1,50,10)
      WRITE(6,*) CM
      STOP
      END
C
      SUBROUTINE INIT
      COMMON H,PP,A3D
      COMMON T(50,50),B(2,3),CM(3,3),LL(3)
      COMMON RM(3,3)
      DO 10 I=1,50
        DO 10 J=1,50
   10     T(J,I)=1.
      DO 40 I=1,3
        DO 20 J=1,3
          CM(J,I)=2.
   20     RM(J,I)=3.
        DO 30 K=1,2
   30     B(K,I)=4.
   40   LL(I)=5.
        H=1
        PP=2
        A3D=3
        RETURN
        END
