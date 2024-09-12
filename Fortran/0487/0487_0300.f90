subroutine s1
b=1
associate (a=> b)
 !$omp parallel private(b)
   b=2
   if (a/=1) print *,101
!$omp end parallel
end associate
b=1
end
call s1
print *,'pass'
end
