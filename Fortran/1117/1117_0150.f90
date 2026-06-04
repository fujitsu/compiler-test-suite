common /com/ jj
!$omp threadprivate(/com/)
!$omp parallel
call = einl01()
!$omp end parallel
!$omp do
do i=1,10
call = einl02()
end do
!$omp end do
!$omp sections 
call = einl03()
!$omp end sections 
!$omp single   
call = einl04()
!$omp end single  
!$omp paralleldo
do i=1,10
call = einl05()
enddo
!$omp end paralleldo
!$omp master   
call = einl06()
!$omp end master  
!$omp critical
call = einl07()
!$omp end critical
!$omp ordered
call = einl08()
!$omp end ordered
i=1
!$omp atomic     
call = call+einl09()
call = inl10()
!$omp barrier
call = inl11()
print *,'pass'
contains

function einl01()
einl01 =1
end function

function einl02()
einl02 =1
end function

function einl03()
einl03 =1
end function

function einl04()
einl04 =1
end function

function einl05()
einl05 =1
end function

function einl06()
einl06 =1
end function

function einl07()
einl07 =1
end function

function einl08()
einl08 =1
end function

function einl09()
einl09 =1
end function

function inl10()
inl10 = 1
end function

function inl11()
inl11 = 1
end function
end
