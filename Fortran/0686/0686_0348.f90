    program ompv2
      integer(4)::i,n
      integer(4),dimension(10)::a
      common /com/ i,n,a
!$omp threadprivate(/com/)
!$omp parallel copyin(a,n)
      call sub()
!$omp end parallel
      print *,'pass'
    end program ompv2

    subroutine sub()
      integer(4)::i,n
      integer(4),dimension(10)::a
      common /com/ i,n,a
!$omp threadprivate(/com/)

!$omp single
      do i=1,n
        a(i)=a(i)+i
      enddo
!$omp end single copyprivate(a,i)
      if (i/=n+1) print *,"fail"
      if (any(a/=(/(k,k=2,n+1)/))) print *,"fail"
!$omp single
      do i=1,n
        a(i)=a(i)+1
      enddo
!$omp end single copyprivate(a,i)
      if (i/=n+1) print *,"fail"
      if (any(a/=(/(k,k=3,n+2)/))) print *,"fail"
    end subroutine

    block data
      integer(4)::i,n
      integer(4),dimension(10)::a
      common /com/ i,n,a
!$omp threadprivate(/com/)
      data a /10*1/
      data n /10/
    end block data
