interface
subroutine einl01(i)
pointer i
end subroutine
subroutine einl02(i)
pointer i
end subroutine
end interface
pointer i
allocate(i)
call inl01()
call inl02()
call einl01(i)
call einl02(i)
print *,'pass'
end

subroutine inl01()
pointer i
!$omp parallel default(private)
if (1.eq.2) i=1
!$omp end parallel
end

subroutine inl02()
pointer i
!$omp parallel default(shared)
if (1.eq.2) i=1
if (1.eq.2) i=i
!$omp end parallel
end

subroutine einl01(i)
pointer i
!$omp parallel default(private)
if (1.eq.2) i=1
!$omp end parallel
end

subroutine einl02(i)
pointer i
target j
!$omp parallel default(shared)
if (1.eq.2) i=>j
!$omp end parallel
end
