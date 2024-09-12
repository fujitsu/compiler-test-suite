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
  call sub(a==1)
 !$omp end task
 end
subroutine sub(x)
logical x(*)
if (.not.x(1))print *,101
if (x(2))print *,102
end
