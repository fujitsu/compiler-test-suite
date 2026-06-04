interface
subroutine einl01(i)
integer i(*)
end subroutine
subroutine einl02(i)
integer i(*)
end subroutine
subroutine einl03(i)
integer i(:)
end subroutine
subroutine einl04(i)
integer i(:)
end subroutine
end interface
integer i(10) 
call inl01(1)
call inl02(1)
call inl03()
call inl04()
call einl01(i)
call einl02(i)
call einl03(i)
call einl04(i)
print *,'pass'
end

subroutine inl01(j)
integer i(j)
!$omp parallel default(private)
i(1)=1
!$omp end parallel
end

subroutine inl02(j)
integer i(j)
!$omp parallel default(shared)
i(1)=1
!$omp end parallel
end

subroutine inl03()
integer i(1)
!$omp parallel default(private)
i(1)=1
!$omp end parallel
end

subroutine inl04()
integer i(1)
!$omp parallel default(shared)
i(1)=1
!$omp end parallel
end

subroutine einl01(i)
integer i(*)
!$omp parallel default(private)
i(1)=1
!$omp end parallel
end

subroutine einl02(i)
integer i(*)
!$omp parallel default(shared)
i(1)=1
!$omp end parallel
end

subroutine einl03(i)
integer i(:)
!$omp parallel default(private)
i(1)=1
!$omp end parallel
end

subroutine einl04(i)
integer i(:)
!$omp parallel default(shared)
i(1)=1
!$omp end parallel
end
