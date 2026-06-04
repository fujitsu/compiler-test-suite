      program ompv2
      integer(4),parameter::n=2
      integer(4),target ::a(2)
      interface
       subroutine sub1(a,n)
         integer(4),target::a(:)
         integer(4),intent(in)::n
       end subroutine sub1
      end interface
!$omp parallel
!$omp workshare
      a=0
!$omp end workshare
      call sub1(a,n)
      if (any(a/=(/10,55/))) print *,"fail"
!$omp end parallel
      print *,'pass'
      end

      subroutine sub1(a,n)
      integer(4),target ::a(:)
      integer(4),intent(in)::n
!$omp do reduction(+:a)
      do i1=1,10
        a(n-1)=a(n-1)+1
        a(n)=a(n)+i1
      enddo
!$omp end do
      end
