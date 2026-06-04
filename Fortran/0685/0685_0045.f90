      integer OMP_GET_MAX_THREADS
      max_t = OMP_GET_MAX_THREADS()
      call sub (max_t)
      print *,'pass'
      end

      subroutine sub(max_t)
      common /com/ no1 , no2
      integer OMP_GET_THREAD_NUM
      integer kk(max_t)
      kk = 0
      mm = 0
!$omp parallel private(/com/),shared(kk),reduction(max:mm)
      no2 = OMP_GET_THREAD_NUM() + 1
      kk(no2) = kk(no2) + 1
      mm = max(mm,no2)
!$omp endparallel

!$omp paralleldo
      do i=1,max_t
        if (kk(i)/=1) print *,"fail"
      enddo
!$omp end paralleldo
 !$   if (max_t/=mm) print *,"fail"
      end
