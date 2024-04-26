      INTEGER A(5)
      DO 10 I=1,10
         IF(.false.)GOTO 100
         A(1:5)=5
         EXIT
 100  continue
 10   continue
      print *,'ok',a
      END
