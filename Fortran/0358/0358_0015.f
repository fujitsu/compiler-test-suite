      INTEGER D(10)/1,2,3,4,5,6,7,8,9,10/,RC/8/
      INTEGER A(10)
C
      DO 30 I=2,10
        A(I)=D(rc)
   30 CONTINUE
      if (a(2) .ne. 8) then
         write(6,*) "ng"
         WRITE(6,*) A(2)
      else
         write(6,*) "ok"
      endif
      END
