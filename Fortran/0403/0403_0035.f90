subroutine s1
integer,save,pointer    ::      m3(:)
!$omp threadprivate(m3)
!$omp parallel
allocate(m3(2))
m3=0
!$omp end parallel
m3=3
!$omp parallel copyin (m3)
if (any(m3/=3)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


