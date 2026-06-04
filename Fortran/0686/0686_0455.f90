      program ompv2
      common /com/ j,k
!$omp threadprivate(/com/)
      integer(2),parameter::n1=1,n2=10
      integer(4),dimension(n1:n2)::a=0
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
      integer(4),dimension(n1:n2)::a
      integer(2)::n1,n2,m,i,isum
      logical(4)::l
      common /com/ j,k
!$omp threadprivate(/com/)
!$omp parallel workshare default(shared),         &
!$omp                    firstprivate(n1,n2,l,m), &
!$omp                    private(i),              &
!$omp                    copyin(j,k),             &
!$omp                    reduction(+:isum),       &
!$omp                    num_threads(m),          &
!$omp                    if(l)             
      forall (i=n1:n2:1)
        isum = isum + i + j + k
        a(i) = a(i) + i
      end forall
!$omp &
!$omp &
!$omp &
!$omp &
!$omp &
!$omp end parallel workshare
      end

      block data
      common /com/ j,k
!$omp threadprivate(/com/)
      data j /1/
      data k /2/
      end
