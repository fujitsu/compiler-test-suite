subroutine s1
integer a
a=1
!$omp parallel private(a)
!$omp single 
   a=2
  if (a/=2) print *,100,a
!$omp end single copyprivate(a)
  if (a/=2) print *,101,a
!$omp end parallel
  if (a/=1) print *,102,a
end
call s1
print *,'pass'
end
