call = einl01()
call = einl02()
call = einl03()
call = einl04()
call = einl05()
call = einl06()
call = einl07()
call = einl08()
call = einl09()
call = einl10()
call = einl11()
call = call
print *,'pass'
end

function einl01()
!$omp parallel 
!$omp end parallel
einl01=1
end function

function einl02()
!$omp do
do i=1,10
end do
!$omp end do
einl02=1
end function

function einl03()
!$omp sections 
!$omp end sections 
einl03=1
end function

function einl04()
!$omp single   
!$omp end single  
einl04=1
end function

function einl05()
!$omp master   
!$omp end master  
einl05=1
end function

function einl06()
!$omp critical
!$omp end critical
einl06=1
end function

function einl07()
!$omp ordered
!$omp end ordered
einl07=1
end function

function einl08()
i=1
!$omp atomic     
i=i+1
einl08=1
end function

function einl09()
einl09=1
end function

function einl10()
!$omp barrier
einl10=1
end function

function einl11()
common /com/ i
!$omp threadprivate(/com/)
einl11=1
end function
