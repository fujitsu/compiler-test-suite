      integer(4),parameter::n=2
      integer(4)::a(n)=0
!$omp parallel reduction(+:a)
!$omp workshare
!$omp end workshare
      call sub1(a,n)
!$omp end parallel
      if (any(a/=(/10,55/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(4)::a(n)
      integer(4),intent(in)::n
!$omp do ordered
      do i1=1,10
!$omp ordered
        a(1)=a(1)+1
        a(2)=a(2)+i1
!$omp end ordered
      enddo
!$omp end do
      end
