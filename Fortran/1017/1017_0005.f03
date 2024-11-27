call s1
call s2
call s3
end
subroutine s1
associate(ppp=>iii)
!$omp parallel if(ppp <0)
!$omp end parallel
end associate
end
subroutine s2
associate(ppp=>iii)
!$omp parallel num_threads(ppp)
associate(ooo=>ppp)
!$omp parallel num_threads(ooo)
!$omp end parallel
end associate
!$omp end parallel
end associate
end
subroutine s3
associate(ppp=>iii)
!$omp task if(ppp <0)
!$omp end task
end associate
end

