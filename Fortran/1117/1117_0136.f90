call inl01()
call inl02()
call inl03()
call inl04()
call inl05()
call inl06()
call inl07()
print *,'pass'
end

subroutine inl01()
common /com/i
!$omp parallel private(/com/)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl02()
common /com/i
!$omp parallel do lastprivate(/com/)
do ii=1,10
end do
!$omp end parallel do
end

subroutine inl03()
common /com/i
!$omp parallel firstprivate(/com/)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl04()
common /com/i
do ii=1,10
end do
end

subroutine inl05()
common /com1/i
!$omp threadprivate(/com1/)
!$omp parallel copyin(/com1/)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl06()
common /com/i
!$omp parallel shared(/com/)
do ii=1,10
end do
!$omp end parallel
end

subroutine inl07()
common /com/i
!$omp parallel default(private)
do i=1,10
end do
!$omp parallel shared(/com/)
do ii=1,10
end do
!$omp end parallel
!$omp end parallel
end
