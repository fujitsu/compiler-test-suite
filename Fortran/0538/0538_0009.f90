  integer::k1,k2,k3
  a=0
  b=1
  k2=1
  !$omp parallel default(none)
  !$omp do               
  do k1=1,10
     do k2=1,10
       do k3=1,10
       do k4=1,10
       end do
       end do
     end do
  end do
  !$omp enddo
  !$omp critical(a1)
  do k2=1,10
  !$omp critical(a2)
  !$omp critical(a3)
  do k1=1,10
  end do
  !$omp endcritical(a3)
  !$omp endcritical(a2)
  end do
  !$omp endcritical(a1)
  !$omp endparallel
  if (k2.ne.1) print *,'ng1'
  print *,'pass'
end
