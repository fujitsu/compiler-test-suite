subroutine s1
save
common /mn/ k1
!$omp threadprivate (/mn/)
!$omp threadprivate (n1)
end
call s1
print *,'pass'
end
