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

function inl06()
inl06 =1
end function

!$omp parallel
call = einl01()
!$omp do
do i=1,10
call = einl02()
end do
!$omp end do
!$omp sections
call = einl03()
!$omp end sections
call = einl04()
!$omp end parallel
!$omp single
!$omp parallel
call = einl05()
!$omp end parallel
!$omp end single
call = inl06()
call = call
print *,'pass'
end
