call einl01()
call einl02()
call einl03()
call einl04()
call einl05()
call einl06()
call einl07()
call einl08()
call einl09()
call einl10()
call einl11()
print *,'pass'
contains

subroutine einl01()
!$omp parallel 
!$omp end parallel
end subroutine

subroutine einl02()
!$omp do
do i=1,10
end do
!$omp end do
end subroutine

subroutine einl03()
!$omp sections 
!$omp end sections 
end subroutine

subroutine einl04()
!$omp single   
!$omp end single  
end subroutine

subroutine einl05()
!$omp master   
!$omp end master  
end subroutine

subroutine einl06()
!$omp critical
!$omp end critical
end subroutine

subroutine einl07()
!$omp ordered
!$omp end ordered
end subroutine

subroutine einl08()
i=1
!$omp atomic     
i=i+1
end subroutine

subroutine einl09()
i=1
i=i+1
end subroutine

subroutine einl10()
!$omp barrier
end subroutine

subroutine einl11()
common /com/ i
!$omp threadprivate(/com/)
end subroutine
end
