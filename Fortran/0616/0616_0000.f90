i=3
 call s(i)
print *,'pass'
 end
 subroutine s(i)
 integer:: a(i), b(i)
 b=0
 a = 1
 a(2) = 0
 !$omp task
 where(a==1)
    b = 1
 end where
if (any(b/=(/1,0,1/)))print *,b
 !$omp end task
 end
