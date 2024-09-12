      INTEGER*4 IA(10),IB(10)
      DATA IB/10*2/
      DO 10 I=1,10
        IA(I)=ISHFT(0,IB(I))
   10 CONTINUE
      do i=1,10
       if(ia(i).ne.0) stop
      end do
      print *, 'PASS'
      END
