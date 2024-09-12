      CALL SUB4
      CALL SUB5
      CALL SUB6
      END
      SUBROUTINE SUB4
      REAL A(5,2502,2)/25020*1.0/
      DO 10 I=1,1
        DO 10 J=1,2501
          DO 10 K=1,4
            A(K,J,I)=3.0
   10 CONTINUE
      WRITE(6,*) (((A(K,J,I),K=1,1),J=1,1),I=1,1)
      END
      SUBROUTINE SUB5
      REAL A(2502,5,2)/25020*1.0/
      DO 10 I=1,1
        DO 10 J=1,4
          DO 10 K=1,2501
            A(K,J,I)=3.0
   10 CONTINUE
      WRITE(6,*) (((A(K,J,I),K=1,1),J=1,1),I=1,1)
      END
      SUBROUTINE SUB6
      REAL A(2502,2,5)/25020*1.0/
      DO 10 I=1,4
        DO 10 J=1,1
          DO 10 K=1,2501
            A(K,J,I)=3.0
   10 CONTINUE
      WRITE(6,*) (((A(K,J,I),K=1,1),J=1,1),I=1,1)
      END
