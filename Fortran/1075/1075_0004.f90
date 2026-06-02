common /com/ i  
common /com1/ j
equivalence (j,k)
!$omp threadprivate(/com/)
data i/1/
j=2
!$omp parallel firstprivate(/com1/)
call sub()
if (j.ne.2) print *,'fail'
!$omp end parallel
print *,"pass"
end

subroutine sub()
call isub()
contains
subroutine isub()
common /com1/ j
equivalence (j,k)
end subroutine
end
