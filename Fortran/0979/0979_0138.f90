 integer,allocatable::a(:)
 allocate(a(3))
 a=(/-1,-2,-3/)
 i=1
!$omp parallel
 j=0
!$omp barrier
!$omp do reduction(+:j),lastprivate(a)
  do i=1,3
    a(i) = i
    j = j + i
  enddo
!$omp end do
  if (a(3)/=3) write(6,*) "NG"
!$omp end parallel
  if (j/=6) write(6,*) "NG"
  print *,'pass'
  end
