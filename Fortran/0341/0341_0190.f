      INTEGER A(10,10)
      A=10
      DO 10 I=1,2                 
         DO 20 J=1,2                
            A(J,I) = A(J,I) * 2  
 20      CONTINUE             
 10   CONTINUE             
      DO 30 J=1,2             
         A(J,1) = A(J,1) * 2
 30   CONTINUE
      if(A(5,5).eq.10) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      END
