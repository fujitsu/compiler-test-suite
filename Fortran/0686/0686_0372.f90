      integer(4),parameter::n=2
      integer(4)::a(n)
      a=0
      call sub1(a,n)
      if (any(a/=(/10,55/))) print *,"fail"
      a=0
      call sub2(a,n)
      if (any(a/=(/10,55/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(4)::a(n)
      integer(4),intent(in)::n
!$omp parallel
!$omp do reduction(+:a) ordered
      do i1=1,10
!$omp ordered
        a(1)=a(1)+1
        a(2)=a(2)+i1
!$omp end ordered
      enddo
!$omp end do
!$omp end parallel
      end

      subroutine sub2(a,n)
      integer(4)::a(n)
      integer(4),intent(in)::n
!$omp parallel reduction(+:a)
!$omp do ordered
      do i1=1,10
!$omp ordered
        a(1)=a(1)+1
        a(2)=a(2)+i1
!$omp end ordered
      enddo
!$omp end do
!$omp end parallel
      end
