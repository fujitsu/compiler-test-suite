subroutine s1
integer,allocatable::a(:)
integer(8):: k
allocate(a(2) ,source=[1,2])
k=loc(a)
!$omp parallel firstprivate(a)
  if (any(a/=[1,2])) print *,101
  if (loc(a)==k)  print *,102
!$omp end parallel
end
call s1
print *,'pass'
end
