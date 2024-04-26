      INTEGER A(10,10)
      A=10
      DO 30 J=1,2             
         A(J,1) = A(J,1)
 30   CONTINUE
      DO 10 I=1,2                 
         DO 20 J=1,2                
            A(J,I) = A(J,I)
 20      CONTINUE             
 10   CONTINUE             
      if(A(1,1).eq.10) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      END
