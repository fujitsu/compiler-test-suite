program main
  integer a(10), total_1, total_2, start, end
  integer omp_get_thread_num

  total_1 = 0
  total_2 = 0
!$omp parallel private(a, j, start, end) reduction(+: total_2, total_1)
  start = OMP_GET_THREAD_NUM()*10+1
  end = (OMP_GET_THREAD_NUM()+1)*10
  a=(/(i, i=start, end)/)
  do j=1, 10
     total_1 = total_1+a(j)
  end do
!$omp barrier
  do j=start, end
     total_2 = total_2+j
  end do
!$omp end parallel

  if(total_1 .eq. total_2) then
     print *, 'ok'
  else
     print *, 'NG', total_1, total_2
  end if
end program main
