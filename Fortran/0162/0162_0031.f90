!$omp parallel default(none) shared(k)
  call foo( [ (k,k =1,2 )] )
!$omp end parallel
!$omp parallel default(none) private(k)
k=1
  call foo1( [ (k,k =1,2 )],k )
!$omp end parallel
print *,'pass'
end
subroutine foo1(i,j)
integer :: i(*),j
end
subroutine foo(i)
integer :: i(*)
end
