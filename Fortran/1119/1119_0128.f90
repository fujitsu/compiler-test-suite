  !$omp simd
  do i=1,1
  j=1   
  enddo
  !$omp atomic
  j=j+1
  if(j/=2) print *,'err1'
  !$omp simd
  do k=1,1
  if(j/=2) print *,'err1'
  enddo
  print *,'pass'
  end
  
