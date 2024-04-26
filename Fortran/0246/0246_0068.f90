subroutine s1
  integer n,m,o,p,q,o2,p2
  parameter (n=1000,m=4,o=3,o2=5,p=2,p2=3,q=4)
  integer:: a(n,m,o,o2,p,p2,p:q)
  logical(m)::mask1(n,4)=.true.
  logical(m)::mask21(n)=.true.
  logical(m)::mask22(2)=.true.
 
  a=0

  DO CONCURRENT( k1=1:n , k2=1:m , mask1(k1,k2) )
    DO CONCURRENT(k3=1:o,k32=1:o2)
      DO CONCURRENT( k4=1:p,k42=1:p2,mask22(2) )
        DO CONCURRENT( k5=p:q )
          a(k1,k2,k3,k32,k4,k42,k5) = 1
        END DO
      END DO
    END DO
  END DO

  if( any(a/=1) ) print *,"FAIL"
 
  do concurrent( k2=1:2)
   do concurrent( k1=1:n ,mask21(k1) )
      a(k1,1,1,1,k2,1,2) = 2
   end do
  end do

  if( any(a==2) .AND. any(a==1)) print *,"PASS"
END

  call s1
END 
