integer,parameter :: n = 5
integer a(1,n,1,n)

!$omp parallel workshare
forall ( i=1:n, j=1:n )
    a(:,i,:,j) = 100.0/real(i+j-1)
endforall
!$omp end parallel workshare
if ( any(a/=reshape((/100,50,33,25,20, &
                       50,33,25,20,16, &
                       33,25,20,16,14, &
                       25,20,16,14,12, &
                       20,16,14,12,11/),(/1,5,1,5/))) ) print *,"fail"
print *,'pass'
end
