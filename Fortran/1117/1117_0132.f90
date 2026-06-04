call sub1
call sub2
call sub3
call sub4
print *,'pass'
end
subroutine sub1()
common /com/ i
!$omp parallel firstprivate(/com/)
!$omp end parallel
end
subroutine sub2()
common /com/ i
!$omp parallel private(/com/)
!$omp end parallel
end
subroutine sub3()
common /com/ i
!$omp do lastprivate(/com/)
do ii=1,10
end do
!$omp end do
end
subroutine sub4()
common /coma/ i
!$omp threadprivate(/coma/)
!$omp parallel copyin(/coma/)
!$omp end parallel
end
