      PROGRAM MAIN

      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07

      STOP
      END

      SUBROUTINE SUB01
      REAL A(10),B(10)
      REAL A1(10),B1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/1.0,2.0,3.0,4.0,5.0,1.0,2.0,3.0,4.0,5.0/
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,-4.0,-3.0,-2.0,-1.0,0.0/

      A(1:5:1)=A(6:10:1)
      B(6:10:1)=B(1:5:1)

      DO 10 I=1,10
        IF (A(I) .NE. A1(I)) THEN
          WRITE(6,999) 'A',A
        END IF
        IF (B(I) .NE. B1(I)) THEN
          WRITE(6,999) 'B',B
        END IF
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN
          GOTO 100
        END IF
  10  CONTINUE
      WRITE(6,*) '***  OK  ***'
 100  CONTINUE
 999  FORMAT(1H ,'***  NG  ***',1H ,A1,'(',10(1H ,F4.1),')')
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(10),B(10)
      REAL A1(10),B1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/1.0,2.0,3.0,4.0,5.0,1.0,2.0,3.0,4.0,5.0/
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,-4.0,-3.0,-2.0,-1.0,0.0/

      A(5:1:-1)=A(10:6:-1)
      B(10:6:-1)=B(5:1:-1)

      DO 10 I=1,10
        IF (A(I) .NE. A1(I)) THEN
          WRITE(6,999) 'A',A
          GOTO 20
        END IF
  10  CONTINUE
  20  CONTINUE
      DO 30 I=1,10
        IF (B(I) .NE. B1(I)) THEN
          WRITE(6,999) 'B',B
          GOTO 40
        END IF
  30  CONTINUE
  40  CONTINUE
      DO 50 I=1,10
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN
          GOTO 100
        END IF
  50  CONTINUE
      WRITE(6,*) '*** OK ***'
 100  CONTINUE
 999  FORMAT(1H ,'*** NG ***',1H ,
     1                       /,1H ,A1,'(',10(1H ,F5.2),')')
      RETURN
      END

      SUBROUTINE SUB03
      REAL A(10),B(10),A1(10),B1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/5.0,4.0,3.0,2.0,1.0,1.0,2.0,3.0,4.0,5.0/
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,0.0,-1.0,-2.0,-3.0,-4.0/

      A(5:1:-1)=A(6:10:1)
      B(10:6:-1)=B(1:5:1)

      DO 10 I=1,10
        IF (A(I) .NE. A1(I)) THEN
          WRITE(6,999) 'A',A
          GOTO 40
        END IF
  10  CONTINUE
  40  CONTINUE
      DO 20 I=1,10
        IF (B(I) .NE. B1(I)) THEN
          WRITE(6,999) 'B',B
          GOTO 50
        END IF
  20  CONTINUE
  50  CONTINUE
      DO 30 I=1,10
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN
          GOTO 60
        END IF
  30  CONTINUE
      WRITE(6,998)
  60  CONTINUE
 998  FORMAT(1H ,'*** OK ***')
 999  FORMAT(1H ,'*** NG ***',1H ,
     1                       /,1H ,A1,'(',10(1H ,F5.2),')')
      RETURN
      END

      SUBROUTINE SUB04
      REAL A(10),B(10),A1(10),B1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/5.0,4.0,3.0,2.0,1.0,1.0,2.0,3.0,4.0,5.0/
      DATA B1/-4.0,-3.0,-2.0,-1.0,0.0,0.0,-1.0,-2.0,-3.0,-4.0/

      A(1:5:1)=A(10:6:-1)
      B(6:10:1)=B(5:1:-1)

      DO 10 I=1,10
        IF( A(I) .NE. A1(I)) THEN
          WRITE (6,999) 'A',A
          GOTO 40
        END IF
  10  CONTINUE
  40  CONTINUE
      DO 20 I=1,10
        IF( B(I) .NE. B1(I)) THEN
          WRITE (6,999) 'B',B
          GOTO 50
        END IF
  20  CONTINUE
  50  CONTINUE
      DO 30 I=1,10
        IF( A(I) .NE. A1(I) .OR. B(I) .NE. B1(I)) THEN
          GOTO 60
        END IF
  30  CONTINUE
      WRITE(6,998)
  60  CONTINUE
 998  FORMAT(1H '*** OK ***')
 999  FORMAT(1H '*** NG ***',1H ,
     1                          /,1H ,A1,'(',10(1H ,F5.2),')')
      RETURN
      END

      SUBROUTINE SUB05
      REAL A(10),A1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/-4.0,-3.0,-2.0,-1.0,-4.0,-3.0,-2.0,-1.0,0.0,5.0/
      DATA I/1.0/

      A(5:9:I)=A(1:5:I)

      DO 10 J=1,10
        IF(A(J) .NE. A1(J)) THEN
          WRITE (6,999)
          GOTO 20
        END IF
  10  CONTINUE
      WRITE (6,998)
  20  CONTINUE
 998  FORMAT(1H ,'*** OK ***')
 999  FORMAT(1H ,'*** NG ***',1H ,
     1                     /,1H ,A1,'(',10(1H ,F5.2),')')
      RETURN
      END

      SUBROUTINE SUB06
      REAL A(10),B(10),C(10),A1(10)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA A1/-4.0,-3.0,-2.0,-1.0,5.0,1.0,2.0,3.0,4.0,0.0/

      C    =A(5)
      A(10)=0.0
      A( 5)=5.0
      B    =C

      DO 10 I=1,10
        IF (A(I) .NE. A1(I)) THEN
          WRITE (6,999) 'A',A
          GOTO 20
        END IF
  10  CONTINUE
  20  CONTINUE
      DO 30 I=1,10
        IF(B(I) .NE. 0.0) THEN
          WRITE (6,999) 'B',B
          GOTO 40
        END IF
  30  CONTINUE
      DO 50 I=1,10
        IF (A(I) .NE. A1(I) .OR. B(I) .NE. 0.0) THEN
          GOTO 40
        END IF
  50  CONTINUE
      WRITE(6,998)
  40  CONTINUE
 998  FORMAT(1H ,'*** OK ***')
 999  FORMAT(1H ,'*** NG ***',1H ,
     1                   /,A1,'(',10(1H ,F5.2),')')
      RETURN
      END

      SUBROUTINE SUB07
      REAL A(10),B(5),C(5),B1(5),C1(5)
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/
      DATA C1/-4.0,-3.0,-2.0,-1.0,0.0/
      DATA B1/1.0,2.0,3.0,4.0,0.0/

      C(1:5:1)=A(1:5:1)
      A(10)=0.0
      B(1:5:1)=A(6:10:1)

      DO 10 I=1,5
        IF (B(I) .NE. B1(I)) THEN
          WRITE (6,999) 'B',B
          GOTO 20
        END IF
  10  CONTINUE
  20  CONTINUE
      DO 30 I=1,5
        IF (C(I) .NE. C1(I)) THEN
          WRITE (6,999) 'C',C
          GOTO 40
        END IF
  30  CONTINUE
      DO 50 I=1,5
        IF (B(I) .NE. B1(I) .OR. C(I) .NE. C1(I)) THEN
          GOTO 40
        END IF
  50  CONTINUE
      WRITE(6,998)
  40  CONTINUE
 998  FORMAT(1H ,'*** OK ***')
 999  FORMAT(1H ,'*** NG ***',1H ,
     1                          /,1H ,A1,'(',10(1H ,F5.2),1H ,')')
      RETURN
      END
