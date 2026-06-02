real*4 ::a(15)= 0.0 ,b(15) = 0.0

!$omp parallel workshare
FORALL ( j=1:15 )
   a(j) = real(j)
   b(j) = real(j)
ENDFORALL
!$omp end parallel workshare
!$omp parallel workshare
FORALL ( j=15: 2: -1 )
   a(j) = a(j) + a(j-1)
ENDFORALL
!$omp end parallel workshare
do j = 15, 2, -1
   b(j) = b(j) + b(j-1)
enddo
if ( any(a/=b) ) print *,"fail"

print *,'pass'
end

