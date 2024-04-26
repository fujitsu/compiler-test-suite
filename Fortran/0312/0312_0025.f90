call inl05()
print *,'PASS'
end

subroutine inl05()
common /com/i
!$omp threadprivate(/com/)
!$omp parallel copyin(/com/)
ii=1
!$omp end parallel
end
