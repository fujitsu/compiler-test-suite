      integer::a(5),b(5)
       interface
         subroutine sub(a,b)
           integer::a(:),b(:)
         end subroutine
       end interface
      a=(/1,2,3,4,5/)
      call sub(a,b)
      if (any(a/=(/1,2,3,4,5/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,b)
      integer::a(6:),b(-5:)
!$omp parallel firstprivate(a)
      if (any(a/=(/1,2,3,4,5/))) print *,"fail"
!$omp single
      b=a
!$omp end single
!$omp end parallel
      end
