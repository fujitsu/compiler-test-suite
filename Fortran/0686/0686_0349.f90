    program ompv2
      call sub()
      print *,'pass'
    end program ompv2

    subroutine sub()
      integer(4)::i,n
      integer(4),dimension(10)::a
      common /com/ i,n,a
!$omp threadprivate(/com/)

!$omp parallel copyin(a,n,i)
!$omp single
 1000 i=i+1
      a(i)=a(i)+i
      if (i.lt.n) goto 1000
!$omp end single copyprivate(a,i)
      if (i/=n) print *,"fail"
      if (any(a/=(/(k,k=2,n+1)/))) print *,"fail"
!$omp single
      i=0
      do while (i.lt.n)
        i=i+1
        a(i)=a(i)+1
      enddo
!$omp end single copyprivate(n,a,i)
      if (i/=n) print *,"fail"
      if (any(a/=(/(k,k=3,n+2)/))) print *,"fail"
!$omp end parallel
    end subroutine

    block data
      integer(4)::i,n
      integer(4),dimension(10)::a
      common /com/ i,n,a
!$omp threadprivate(/com/)
      data a /10*1/
      data n /10/
      data i /0/
    end block data
