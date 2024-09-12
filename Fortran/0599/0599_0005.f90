!$omp parallel default(none) private(k)
  call foo2( [ (k,k =1,2 )],k )
!$omp end parallel
print *,'pass'
end
subroutine foo2(n,nn)
integer n(*)
end
