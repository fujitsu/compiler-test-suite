INTEGER :: i,j,k,l,m,n
INTEGER :: a(1)=0
DO 10, i=1,1
  DO 10,CONCURRENT(j=1:i)
    DO 10, k=1,1
      DO 10,CONCURRENT(l=1:k)
        DO 10, m=1,1
          DO 10,CONCURRENT(n=1:m)
            a(i)=5
             10 END DO

IF (a(1)/=5) THEN
 print *,"FAIL"
ELSE
 print *,"PASS"
END IF

END

