call inl01()
call inl02()
call inl03()
call inl04()
call inl05()
call einl01(i)
call einl02(i)
call einl03(i)
call einl04(i)
call einl05(i)
print *,'pass'
end

subroutine inl01()
!$omp parallel 
i=1
i=i
!$omp end parallel
end

subroutine inl02()
!$omp parallel 
!$omp do
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel
end

subroutine inl03()
!$omp parallel 
!$omp sections 
i=1
i=i
!$omp end sections 
!$omp end parallel
end

subroutine inl04()
!$omp parallel
!$omp single   
i=1
i=i
!$omp end single  
!$omp end parallel
end

subroutine inl05()
!$omp parallel 
!$omp master   
i=1
i=i
!$omp end master  
!$omp end parallel
end

subroutine einl01(i)
!$omp parallel 
i=1
i=i
!$omp end parallel
end

subroutine einl02(i)
!$omp parallel 
!$omp do
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel 
end

subroutine einl03(i)
!$omp parallel 
!$omp sections 
i=1
i=i
!$omp end sections 
!$omp end parallel
end

subroutine einl04(i)
!$omp parallel
!$omp single   
i=1
i=i
!$omp end single  
!$omp end parallel
end

subroutine einl05(i)
!$omp parallel 
!$omp master   
i=1
i=i
!$omp end master  
!$omp end parallel
end
