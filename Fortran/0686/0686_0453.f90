      program ompv2
      integer(4),dimension(20)::a,b,c
      logical(4)::l=.false.

!$omp parallel workshare
      a(:)=(/(1,i=1,20)/)
!$omp end parallel workshare

!$omp parallel workshare
      b(:)=(/(i,i=1,20)/)
!$omp end parallel workshare

!$omp parallel workshare
      c=DIM(b,a)
!$omp end parallel workshare

!$omp parallel do reduction(.or.:l)
      do i=1,20
        if (c(i)/=i-1) l = l .or. .true.
      enddo
!$omp end parallel do

      if (l) print *,"fail"

      print *,'pass'

      end
