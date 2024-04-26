      INTEGER A(10)
      PARAMETER (N=1)
      DO 1 I = N, N+9
         A(I) = 10
         B = A(I)
 1    CONTINUE
      DO 2 I = 1, 1+N+9-1
         A(I) = 10
         C = A(I)
 2    CONTINUE
      if(a(1).eq.10) then
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
