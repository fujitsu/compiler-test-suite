      end
      subroutine sub1()
      integer a(10),b(10)
      a=(/1,2,3,4,5,6,7,8,9,10/)
      b=1
!$omp parallel default(none) private(a)
      a=(/(i,i=101,110)/)
!$omp do firstprivate(b)
      do i = 1,10
        b(i) = b(i)
      enddo
!$omp enddo
!$omp endparallel

!$omp parallel private(a)
      a=(/(i,i=101,110)/)
!$omp do firstprivate(b)
      do i = 1,10
        b(i) = b(i)
      enddo
!$omp enddo

!$omp endparallel
      end
