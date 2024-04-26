      integer a(10,10)
      NP=10
      IF ( 'TYPL' .EQ. 'C' ) THEN
         DO 100  J = 1,NP
            a(1,J) =  1
 100     CONTINUE
      ELSE
         DO 200  J = 1,NP
            a(1,J) =  1
 200     CONTINUE
      END IF
      if(a(1,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
