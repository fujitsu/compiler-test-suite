      integer a(10,10)
      NP=10
      a=10
      DO 100  J = 1,NP
         IF (J .EQ. 2) a(1,J)=1
         a(1,J)=1
 100  CONTINUE
      DO 200  J = 1,NP
         a(1,J)=1
 200  CONTINUE
      if(a(1,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
