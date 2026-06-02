subroutine s1
!$omp parallel proc_bind(spread)
!$omp end parallel
end

subroutine s2
!$omp parallel proc_bind(master)
!$omp end parallel
end

subroutine s3
!$omp parallel proc_bind(close)
!$omp end parallel
end

subroutine s11
!$omp parallel proc_bind(Spread)
!$omp end parallel
end

subroutine s12
!$omp parallel proc_bind(Master)
!$omp end parallel
end

subroutine s13
!$omp parallel proc_bind(Close)
!$omp end parallel
end

subroutine s21
!$omp parallel proc_bind(SPREAD)
!$omp end parallel
end

subroutine s22
!$omp parallel proc_bind(MASTER)
!$omp end parallel
end

subroutine s23
!$omp parallel proc_bind(CLOSE)
!$omp end parallel
end

subroutine s31
!$omp parallel proc_bind(SpreAD)
!$omp end parallel
end

subroutine s32
!$omp parallel proc_bind(MastER)
!$omp end parallel
end

subroutine s33
!$omp parallel proc_bind(CloSE)
!$omp end parallel
end

call s11
call s12
call s13
call s21
call s22
call s23
call s31
call s32
call s33
print *,'pass'
end
