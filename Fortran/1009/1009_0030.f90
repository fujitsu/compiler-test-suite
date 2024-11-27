!
    program main
      integer(2)::i,m
      integer(2),allocatable,dimension(:)::n


      m=4
      allocate(n(m))
      n=(/1,10,1,1/)
!$omp parallel
      call sub(i,n,m)
!$omp endparallel
      if (any(n/=(/1,10,1,10/)).or.i/=11) write(6,*) "NG"

     print *,'ok'
    end program

    subroutine sub(i,n,m)
      integer(2)::i,m
      integer(2),dimension(m)::n
!$omp do schedule(static,n(m)),lastprivate(i)
      do i=n(1),n(2),n(3)
        if (i==n(2)) n(4)=i
      enddo
!$omp enddo
    end subroutine
