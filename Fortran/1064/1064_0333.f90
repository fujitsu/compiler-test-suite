subroutine s1()
integer,parameter:: a(*)=[1]
    !$omp task default(none)
  if (a(1)/=1) print *,1001
!$omp end task
end
subroutine s2()
integer,parameter:: a(*)=[1]
    !$omp task default(private)
  if (a(1)/=1) print *,1001
!$omp end task
end
subroutine s3()
integer,parameter:: a(*)=[1]
    !$omp task default(firstprivate)
  if (a(1)/=1) print *,1001
!$omp end task
end
subroutine s4()
integer,parameter:: a(*)=[1]
    !$omp task default(firstprivate)
  if (a(1)/=1) print *,1001
!$omp end task
end
call s1()
call s2()
call s3()
call s4()
print *,'pass'
end
