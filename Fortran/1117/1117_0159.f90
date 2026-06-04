subroutine einl01(i)
j=loc(i)
j=j
end subroutine

subroutine einl02(i)
j=loc(i)
j=j
end subroutine

subroutine einl03(i)
j=loc(i)
j=j
end subroutine

subroutine einl04(i)
j=loc(i)
j=j
end subroutine

subroutine einl05(i)
j=loc(i)
j=j
end subroutine

subroutine einl06(i)
j=loc(i)
j=j
end subroutine

subroutine einl07(i)
j=loc(i)
j=j
end subroutine

subroutine einl08(i)
j=loc(i)
j=j
end subroutine

subroutine inl09(i)
j=loc(i)
j=j
end subroutine

subroutine inl10(i)
j=loc(i)
j=j
end subroutine

subroutine inl11(i)
j=loc(i)
j=j
end subroutine

common /com/ jj
!$omp threadprivate(/com/)
!$omp parallel
call einl01(1)
!$omp end parallel
!$omp do
do i=1,10
call einl02(1)
end do
!$omp end do
!$omp sections
call einl03(1)
!$omp end sections
!$omp single
call einl04(1)
!$omp end single
!$omp master
call einl05(1)
call einl06(1)
!$omp end master
!$omp critical
call einl07(1)
!$omp end critical
!$omp ordered
call einl08(1)
!$omp end ordered
i=1
!$omp atomic
i=i+1
call inl09(1)
call inl10(1)
!$omp barrier
call inl11(1)
print *,'pass'
end
