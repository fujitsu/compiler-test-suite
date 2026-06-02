! test - recursive subroutine with orphaned directive

program main
  integer a, total, total_b
  integer sub1
  integer tn
  integer OMP_GET_THREAD_NUM
  integer OMP_GET_NUM_THREADS

  total = 0
  total_b = 0
!$omp parallel firstprivate(a)
!$omp single
  tn = OMP_GET_NUM_THREADS()
!$omp end single
  a = OMP_GET_THREAD_NUM()
!$omp atomic
  total = total+sub1(a)
!$omp end parallel

  do i=1, tn-1
     total_b = total_b+i
  end do

  if(total .eq. total_b) then
     print *, 'ok'
  else
     print *, 'NG'
  end if

end program main

recursive integer function sub1(a) result(res)
  integer a

  if(a .eq. 1) then
     res = 1
  else if(a .eq. 0) then
     res = 0
  else
     res = 0
     do i=1, a
        res = 1+sub1(i-1)
     end do
  end if

  return
end function sub1
