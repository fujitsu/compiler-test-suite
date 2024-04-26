      REAL A(2048)
      DO 1 I=1,2048
1     A(I)=I
      CALL SUB1(A(1),A(1024),A(2048))
      CALL SUB2(A(2),A(1025),A(2047))
      DO 2 I=1,2048
2     A(I)=I+1
      WRITE(6,*) A(1),A(1024),A(2048)
      STOP
      END
      SUBROUTINE SUB1(A,B,C)
      WRITE(6,*) A,B,C
      RETURN
      ENTRY SUB2(A,B,C)
      WRITE(6,*) A,B,C
      RETURN
      END
