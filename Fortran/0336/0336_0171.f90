INTEGER A,B,C
COMMON A
SAVE   B,C
INTEGER*2  DUMMY1,DUMMY2,DUMMY3
REAL*8   D1(100),D2(100),D3(100)
REAL*4   ARRAY1(100),ARRAY2(100),ARRAY3(100)
REAL*8   BARRAY1(100),BARRAY2(100),BARRAY3(100)
CALL INIT(D1,D2,D3)
B = 2
C = 3
DO 10 I=1,100
  DUMMY1 = A
  DUMMY2 = B
  DUMMY3 = C
  D1(I) = A
  D2(I) = B
  D3(I) = C
  IF(D1(I) .EQ. D2(I)) THEN
     ARRAY1(I) = A+DUMMY2
     ARRAY2(I) = B+DUMMY1
  ELSE
     ARRAY3(I) = C
     EXIT
  END IF
10 CONTINUE
  CALL RESULT_C1(ARRAY1,ARRAY2,ARRAY3)
DO 20 I=1,100
  IF(D1(I) .EQ. D2(I)) THEN
     BARRAY1(I) = A
     BARRAY2(I) = B
  ELSE
     BARRAY3(I) = C
  END IF
20 CONTINUE
  CALL RESULT_C2(BARRAY1,BARRAY2,BARRAY3)
STOP 
END
SUBROUTINE INIT(D1,D2,D3)
INTEGER D1(100),D2(100),D3(100)
COMMON A
A = 1
DO 50 I=1,100
 D1(I) =  1
 D2(I) =  1
 D3(I) =  3
50 CONTINUE
RETURN
END
SUBROUTINE RESULT_C1(A1,B1,C1)
REAL*4 A1(100),B1(100),C1(100)
INTEGER RESULT, CHECK1,CHECK2

DO 100 I=1,100
  CHECK1 = A1(I)
  CHECK2 = B1(I)
  IF( CHECK1 .EQ. CHECK2 ) THEN
    RESULT = 1
  ELSE
    RESULT = 0
  END IF
100 CONTINUE
IF( RESULT .EQ. 1 ) THEN
  WRITE(6,*) "TEST OK"
ELSE
  WRITE(6,*) "TEST NG"
ENDIF
RETURN
END
SUBROUTINE RESULT_C2(A1,B1,C1)
REAL*8 A1(100),B1(100),C1(100)
INTEGER RESULT, CHECK1,CHECK2

DO 100 I=1,100
  CHECK1 = A1(I)
  CHECK2 = B1(I)
  IF( CHECK1 .EQ. CHECK2 ) THEN
    RESULT = 1
  ELSE
    RESULT = 0
  END IF
100 CONTINUE
IF( RESULT .EQ. 0 ) THEN
  WRITE(6,*) "TEST OK"
ELSE
  WRITE(6,*) "TEST NG"
ENDIF
RETURN
END