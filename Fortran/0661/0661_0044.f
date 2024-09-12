      INTEGER*4 A(2,2)
      INTEGER*4 B(2,2)
      INTEGER*4 XX
      DATA A/2,1,3,4/
      DATA B/1,2,3,4/
      DO 10 I=1,2
      DO 10 J=1,2
      XX=A(I,J)**B(I,J)
      SELECT CASE(XX)
       CASE(2)
       CASE(27)
       CASE(1)
       CASE(256)
       CASE DEFAULT
       WRITE(6,*) 'NG'
      END SELECT
   10 CONTINUE
      WRITE(6,*) '*****PASS*****'
      STOP
      END
