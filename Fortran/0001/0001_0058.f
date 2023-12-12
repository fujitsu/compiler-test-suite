      INTEGER CODE
      DATA CODE/0/

        CALL TEST001(CODE)
        CALL TEST002(CODE)
        CALL TEST003(CODE)
        CALL TEST004(CODE)
        CALL TEST005(CODE)
        IF(CODE .EQ. 0) THEN
          WRITE(6,*) 'OK'
        ELSE
          WRITE(6,*) 'NG'
        ENDIF

      STOP
      END


      SUBROUTINE TEST001(CODE)
C
      INTEGER A(1000),CODE
C
      A = 0
      A = A + 1
C
      DO 10 I=1,1000
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE=CODE+1
            GO TO 20
         ENDIF
   10 CONTINUE



   20 CONTINUE
      END SUBROUTINE TEST001
C
      SUBROUTINE TEST002(CODE)
C
      INTEGER A(1000),CODE
      DATA A/1000*0/
C
      DO 10 I=1,5
         A(I) = A(I) + 1
         DO 20 J=1,5
            A = A + 2
   20    CONTINUE
         A(I) = A(I) - 1
   10 CONTINUE
C
      DO 30 I=1,1000
         IF(A(I).NE.50) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
	    CODE=CODE+1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      END SUBROUTINE TEST002
C
      SUBROUTINE TEST003(CODE)
C
      INTEGER A(1000),CODE
      DATA A/1000*0/
C
      DO 10 I=1,5
         A(I) = A(I) + 1
         DO 20 J=1,10
            A(I) = A(I) + 1
            DO 30 K=1,10
               A = A + 1
   30       CONTINUE
            A(I) = A(I) - 1
   20    CONTINUE
         A(I) = A(I) - 1
   10 CONTINUE
C
      DO 40 I=1,1000
         IF(A(I).NE.500) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE=CODE+1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      END SUBROUTINE TEST003
C
      SUBROUTINE TEST004(CODE)
C
      INTEGER A(1000),CODE
      DATA A/1000*0/
C
      DO 10 I=1,5
         A(I) = A(I) + 1
         DO 20 J=1,10
            A = A + 1
   20    CONTINUE
         DO 30 J=1,10
            A = A + 1
   30    CONTINUE
         A(I) = A(I) - 1
   10 CONTINUE
C
      DO 40 I=1,1000
         IF(A(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
	    CODE=CODE+1
            GO TO 50
         ENDIF
   40 CONTINUE
C
   50 CONTINUE
      END SUBROUTINE TEST004
C
      SUBROUTINE TEST005(CODE)
C
      INTEGER A(1000),CODE
      DATA A/1000*0/
C
      DO 10 I=1,5
         A(I) = A(I) + 1
         DO 20 J=1,10
            A(I) = A(I) + 1
            DO 30 K=1,10
               A = A + 1
   30       CONTINUE
            DO 40 K=1,10
               A = A + 1
   40       CONTINUE
            A(I) = A(I) - 1
   20    CONTINUE
         A(I) = A(I) - 1
   10 CONTINUE
C
      DO 50 I=1,1000
         IF(A(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE=CODE+1
            GO TO 60
         ENDIF
   50 CONTINUE
C
   60 CONTINUE
      END SUBROUTINE TEST005
