      common /com/ i
      integer,dimension(10)::a=(/1,2,3,4,5,6,7,8,9,10/)
!$omp parallel private(/com/)
!$omp do
      do i=1,10
        call sub(a(i),i)
      enddo
!$omp enddo
!$omp end parallel
      print *,'pass'
      end

        subroutine sub(a,i)
        integer a
        if (a /= i) print *,"fail"
        end subroutine
