subroutine s1
common /cmn/ ia(2),is
!$omp threadprivate(/cmn/)
ia=1
is=2
!$omp parallel 
 ia=ia+1
 is=is+1
!$omp end parallel
end
call s1
print *,'pass'
end

