subroutine s1
integer,save::k
common /cmn/ n
!$omp threadprivate(k,/cmn/)
k=1
n=1
end
call s1
print *,'pass'
end
