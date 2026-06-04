common /com/ jj
!$omp threadprivate(/com/)
!$omp parallel
call einl01()
!$omp end parallel
!$omp do
do i=1,10
call einl02()
end do
!$omp end do
!$omp sections 
call einl03()
!$omp end sections 
!$omp single   
call einl04()
!$omp end single  
!$omp master   
call einl05()
call einl06()
!$omp end master  
!$omp critical
call einl07()
!$omp end critical
!$omp ordered
call einl08()
!$omp end ordered
i=1
!$omp atomic     
i=i+1
call inl09()
call inl10()
!$omp barrier
call inl11()
print *,'pass'
contains

subroutine einl01()
end subroutine

subroutine einl02()
end subroutine

subroutine einl03()
end subroutine

subroutine einl04()
end subroutine

subroutine einl05()
end subroutine

subroutine einl06()
end subroutine

subroutine einl07()
end subroutine

subroutine einl08()
end subroutine

subroutine inl09()
end subroutine

subroutine inl10()
end subroutine

subroutine inl11()
end subroutine
end
