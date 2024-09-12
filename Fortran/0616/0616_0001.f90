i=3
 call s1(i)
 call s2(i)
print *,'pass'
 end
 subroutine s1(i)
 integer:: a(i), b(3)
 b=0
 a = 1
 a(2) = 0
 !$omp task shared(a,b)
 where(a==1)
    b = 1
 end where
if (any(b/=(/1,0,1/)))print *,b
 !$omp end task
 end
 subroutine s2(i)
 integer:: a(i), b(3)
 b=0
 a = 1
 a(2) = 0
 !$omp parallel shared(a,b)
 where(a==1)
    b = 1
 end where
if (any(b/=(/1,0,1/)))print *,b
 !$omp end parallel
 end
