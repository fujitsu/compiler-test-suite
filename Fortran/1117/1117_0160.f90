function einl01(i)
einl01 =1
j=loc(i)
j=j
end function

function einl02(i)
einl02 =1
j=loc(i)
j=j
end function

function einl03(i)
einl03 =1
j=loc(i)
j=j
end function

function einl04(i)
einl04 =1
j=loc(i)
j=j
end function

function einl05(i)
einl05 =1
j=loc(i)
j=j
end function

function einl06(i)
einl06 =1
j=loc(i)
j=j
end function

function einl07(i)
einl07 =1
j=loc(i)
j=j
end function

function einl08(i)
einl08 =1
j=loc(i)
j=j
end function

function einl09(i)
einl09 =1
j=loc(i)
j=j
end function

function inl10(i)
inl10 = 1
j=loc(i)
j=j
end function

function inl11(i)
inl11 = 1
j=loc(i)
j=j
end function

common /com/ jj
!$omp threadprivate(/com/)
!$omp parallel
call = einl01(1)
!$omp end parallel
!$omp do
do i=1,10
call = einl02(1)
end do
!$omp end do
!$omp sections
call = einl03(1)
!$omp end sections
!$omp single
call = einl04(1)
!$omp end single
!$omp master
call = einl05(1)
call = einl06(1)
!$omp end master
!$omp critical
call = einl07(1)
!$omp end critical
!$omp ordered
call = einl08(1)
!$omp end ordered
i=1
!$omp atomic
call = call+einl09(1)
call = inl10(1)
!$omp barrier
call = inl11(1)
print *,'pass'
end
