call inl01()
call inl02()
call inl03()
call inl04()
call inl05()
call inl06()
call einl01(i)
call einl02(i)
call einl03(i)
call einl04(i)
call einl05(i)
call einl06(i)
print *,'pass'
end

subroutine inl01()
!$omp parallel private(i)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl02()
!$omp parallel do lastprivate(i)
do ii=1,10
end do
!$omp end parallel do
end

subroutine inl03()
!$omp parallel firstprivate(i)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl04()
!$omp parallel reduction(+:i)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl05()
!$omp parallel shared(i)
do ii=1,10
i=1
i=i
end do
!$omp end parallel
end

subroutine inl06()
!$omp parallel reduction(max:i)
do ii=1,10
end do
!$omp end parallel
end

subroutine einl01(i)
!$omp parallel private(i)
do ii=1,10
end do
!$omp end parallel
end

subroutine einl02(i)
!$omp parallel do lastprivate(i)
do ii=1,10
end do
!$omp end parallel do
end

subroutine einl03(i)
!$omp parallel firstprivate(i)
do ii=1,10
end do
!$omp end parallel
end

subroutine einl04(i)
!$omp parallel reduction(+:i)
do ii=1,10
end do
!$omp end parallel
end

subroutine einl05(i)
!$omp parallel shared(i)
do ii=1,10
i=1
end do
!$omp end parallel
end

subroutine einl06(i)
!$omp parallel reduction(max:i)
do ii=1,10
end do
!$omp end parallel
end
