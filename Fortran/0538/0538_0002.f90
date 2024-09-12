  integer::a(10,10,10),b(10,10,10)
  integer::i,j,k
  a=0
  b=1
  !$omp parallel default(none) shared(a,b)
  !$omp do
  do k=1,10
     do j=1,10
        do i=1,10
           a(i,k,j) = b(i,j,k)
        end do
     end do
  end do
  !$omp do
  do j=1,10
     do i=1,10
        do k=1,10
        end do
     end do
  end do
  !$omp enddo
  !$omp endparallel
  print *,'pass'
end
