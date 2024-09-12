    block data
     integer(4)::a(3),b(2)
     common /com/ a,b
!$omp threadprivate(/com/)
      data a /1,2,3/
      data b /4,5/
    end block data

    program ompv2
     integer(4)::a(3),b(2)
     common /com/ a,b
!$omp threadprivate(/com/)

!$omp parallel
!$omp single
!$omp end single copyprivate(a,b)
!$omp end parallel

!$omp parallel
!$omp single
!$omp end single copyprivate(/com/)
!$omp end parallel

!$omp parallel
!$omp single
!$omp end single copyprivate(/com/)
!$omp single
!$omp end single copyprivate(a,b)
!$omp end parallel
      print *,'pass'
    end
