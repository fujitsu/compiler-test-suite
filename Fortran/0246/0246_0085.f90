INTEGER :: i,j,k,l,m,n
INTEGER :: a(1)=0
DO 10, i=1,1
  DO 20,CONCURRENT(j=1:i)
    DO 20, k=1,1
      DO 30,CONCURRENT(l=1:k)
        DO 30, m=1,1
          DO 40,CONCURRENT(n=1:m)
            40 a(n)=1
            11 a(m)=2
            30 a(l)=3
            20 a(j)=4
            10 a(i)=5
            

IF (a(1)/=5) THEN
 print *,"FAIL"
ELSE
 print *,"PASS"
END IF

END

