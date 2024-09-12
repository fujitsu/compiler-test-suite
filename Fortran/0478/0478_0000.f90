  subroutine s1(k,n3)
    implicit none
      integer::k(n3)
      integer::n3
!$omp task firstprivate(k)
k=1
!$omp end task
      end
      integer::k(3)
k=2
call s1(k,3)
if (k(3)/=2) print *,101
print  *,'pass'
end
