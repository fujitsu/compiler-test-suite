! -x- -Ei
pointer (i,p)
i=loc(j)
p=1
call inl01()
call inl02()
call inl03()
call inl04()
call einl01(i)
call einl02(i)
call einl03(i)
call einl04(i)
print *,'pass'
end

subroutine inl01()
!$omp parallel default(private)
i=1
!$omp end parallel
end

subroutine inl02()
!$omp parallel default(shared)
i=1
i=i
!$omp end parallel
end

subroutine inl03()
pointer (i,p)
!$omp parallel default(private)
i=loc(j)
p=1
!$omp end parallel
end

subroutine inl04()
pointer (i,p)
!$omp parallel default(shared)
i=loc(j)
p=1
!$omp end parallel 
end

subroutine einl01(i)
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64) || defined(__aarch64__)
integer(kind=8) :: i
#else
integer(kind=4) :: i
#endif
!$omp parallel default(private)
i=1
!$omp end parallel
end

subroutine einl02(i)
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64) || defined(__aarch64__)
integer(kind=8) :: i
#else
integer(kind=4) :: i
#endif
!$omp parallel default(shared)
i=1
!$omp end parallel
end

subroutine einl03(i)
pointer (i,p)
!$omp parallel default(private)
i=loc(j)
p=1
!$omp end parallel
end

subroutine einl04(i)
pointer (i,p)
!$omp parallel default(shared)
i=loc(j)
p=1
!$omp end parallel
end
