call inl01()
call inl02()
call inl03()
call inl04()
call inl05()
call inl06()
call inl07()
call inl08()
call inl09()
call inl10()
call einl01(i)
call einl02(i)
call einl03(i)
call einl04(i)
call einl05(i)
call einl06(i)
call einl07(i)
call einl08(i)
call einl09(i)
call einl10(i)
print *,'pass'
end

subroutine inl01()
!$omp parallel default(private) shared(i)
!$omp do lastprivate(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl02()
!$omp parallel default(shared)
!$omp do lastprivate(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl03()
!$omp parallel default(private) shared(i)
!$omp do private(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl04()
!$omp parallel default(shared)
!$omp do private(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl05()
!$omp parallel default(private) shared(i)
!$omp do reduction(+:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl06()
!$omp parallel default(shared)
!$omp do reduction(+:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl07()
!$omp parallel default(private)
!$omp do 
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel
end

subroutine inl08()
!$omp parallel default(shared)
!$omp do 
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel
end

subroutine inl09()
!$omp parallel default(private) shared(i)
!$omp do reduction(max:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine inl10()
!$omp parallel default(shared)
!$omp do reduction(max:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl01(i)
!$omp parallel default(private) shared(i)
!$omp do lastprivate(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl02(i)
!$omp parallel default(shared)
!$omp do lastprivate(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl03(i)
!$omp parallel default(private) shared(i)
!$omp do private(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl04(i)
!$omp parallel default(shared)
!$omp do private(i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl05(i)
!$omp parallel default(private) shared(i)
!$omp do reduction(+:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl06(i)
!$omp parallel default(shared)
!$omp do reduction(+:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl07(i)
!$omp parallel default(private)
!$omp do 
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel
end

subroutine einl08(i)
!$omp parallel default(shared)
!$omp do 
do ii=1,10
i=1
i=i
end do
!$omp end do
!$omp end parallel
end

subroutine einl09(i)
!$omp parallel default(private) shared(i)
!$omp do reduction(max:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine einl10(i)
!$omp parallel default(shared)
!$omp do reduction(max:i)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end
