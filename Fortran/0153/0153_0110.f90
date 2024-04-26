subroutine s1()
integer,pointer::n2(:)
common /cmn/ n2
!$omp threadprivate(/cmn/)
allocate(n2(2))
n2=1
end
!$omp parallel
call s1()
!$omp end parallel
print *,'pass'
end
