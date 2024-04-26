      INTEGER A(12)
      A=9
      DO 1 I = 1, 10
         A(1+1+I) = 10
         B = A(1+1+I-1+1)
 1    CONTINUE
      DO 2 I = 1, 10
         A(-1+1+I) = 10
         C = A(I-1+1+1)
 2    CONTINUE
      if(A(5).eq.10) then
         if(B.eq.10) then
            if(C.eq.10) then
               write(6,*) "OK"
            else
               write(6,*) "NG"
            endif
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      END
