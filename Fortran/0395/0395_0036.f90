         call s0
         call s1
         print *,'pass'
         end
         module a
          integer,dimension(5)::a1
          common /cc/ a1
!$omp threadprivate (/cc/)
         end
         subroutine s1
         use a
          common /dd/ kk,k
!$omp threadprivate (/dd/)
!$omp parallel
         write (1,*) (a1(1),kk=1,k)
         if (kk/=4) print *,201,kk
!$omp end parallel
         end
subroutine s0
use a
  integer omp_get_thread_num
          common /dd/ kk,k
!$omp threadprivate (/dd/)
!$omp parallel
        k=3
       a1(1)=omp_get_thread_num()
!$omp end parallel
end
