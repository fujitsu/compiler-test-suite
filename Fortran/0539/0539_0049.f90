  integer::a(10,10,10),b(10,10,10)
  integer::k1,k2,k3
  a=0
  b=1
  k2=1
  !$omp parallel default(none) shared(a,b)
  !$omp do
  do k1=1,10
     do k2=1,10
       do k3=1,10
           a(k3,k2,k1) = b(k3,k2,k1)
       end do
     end do
  end do
  !$omp enddo
  !$omp do
  do k2=1,10
  end do
  !$omp enddo
  !$omp endparallel
  if (k2.ne.1) print *,'ng1'
  if (any(a.ne.1)) print *,'ng2'
  print *,'pass'
end
