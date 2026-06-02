      program ompv2
      common /com/ j,k
!$omp threadprivate(/com/)
      integer(2)::n1=1_2,n2=10_2
      integer(4),dimension(1:10)::a=0
      integer(2)::m,i,isum
      logical(4)::l
      i=100
      m=1
      isum=0
      l=.true.
      call sub(a,n1,n2,m,l,i,isum)
      if (isum/=n2+j+k) print *,"fail"
      if (any(a/=(/(i,i=n1,n2)/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,n1,n2,m,l,i,isum)
      common /com/ j,k
!$omp threadprivate(/com/)
      integer(4),dimension(n1:n2)::a
      integer(2)::n1,n2,m,i,isum
      logical(4)::l
!$omp parallel sections default(shared),         &
!$omp                   firstprivate(n1,n2,l,m), &
!$omp                   lastprivate(n1,n2,l,m),  &
!$omp                   private(i),              &
!$omp                   copyin(j,k),             &
!$omp                   reduction(+:isum),       &
!$omp                   num_threads(m),          &
!$omp                   if(l)             
!$omp section
      forall (i=n1:n2:1)
        isum = isum + i + j + k
        a(i) = a(i) + i
      end forall
!$omp &
!$omp &
!$omp &
!$omp &
!$omp &
!$omp end parallel sections
      end

      block data
      common /com/ j,k
!$omp threadprivate(/com/)
      data j /2/
      data k /1/
      end
