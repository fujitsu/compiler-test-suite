    program ompv2
      integer(4),parameter::n=10
      integer(4),dimension(n)::a=1
!$omp parallel firstprivate(a),private(i)
      call sub(a,n)
!$omp end parallel
      print *,'pass'
    end program ompv2

    subroutine sub(a,n)
      integer(4),intent(in)::n
      integer(4),dimension(n)::a
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
