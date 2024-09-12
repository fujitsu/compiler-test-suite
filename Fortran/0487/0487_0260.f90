subroutine s1
      integer,allocatable:: a(:)
      allocate(a(2))
      a=[1,2]
!$omp parallel reduction(+:a)
      a=a+1
!$omp end parallel
  if (any(a/=[3,4])) print *,101,a
end
call omp_set_num_threads(2)
call s1
      print *,'pass'
end
