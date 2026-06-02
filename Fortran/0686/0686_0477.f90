      program ompv2
      common /com/ b,n1,n2
      integer(4),dimension( 1:10)::b
      integer(4)::n1,n2
!$omp threadprivate(/com/)
      integer(2)::m,i,isum
      logical(4)::l
      i=100
      m=1
      isum=0
      l=.true.
      call sub(m,l,i,isum)
      if (isum/=0) print *,"fail"
      print *,'pass'
      end

      subroutine sub(m,l,i,isum)
      common /com/ b,n1,n2
      integer(4),dimension( 1:10)::b
      integer(4)::n1,n2
      integer(4),dimension(n1:n2)::a
      integer(2)::m,i,isum
      logical(4)::l
!$omp threadprivate(/com/)
!$omp parallel workshare default(shared),   &
!$omp                    firstprivate(l,m), &
!$omp                    private(i),        &
!$omp                    copyin(b),         &
!$omp                    reduction(*:isum), &
!$omp                    num_threads(m),    &
!$omp                    if(l)             
      forall (i=n1:n2:1)
        a(i) = b(i) + 1
        isum = isum * a(i)
      end forall
!$omp &
!$omp &
!$omp &
!$omp &
!$omp &
!$omp end parallel workshare
      if (any(a/=(/10,9,8,7,6,5,4,3,2,1/))) print *,"fail"
      end

      block data
      common /com/ b,n1,n2
      integer(4),dimension( 1:10)::b
      integer(4)::n1,n2
!$omp threadprivate(/com/)
      data n1 / 1/
      data n2 /10/
      data b  /9,8,7,6,5,4,3,2,1,0/
      end
