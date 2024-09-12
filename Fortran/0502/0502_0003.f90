subroutine sub
  !$omp simd simdlen(8_4) safelen(8_4)
    do i=1,1
    end do
  !$omp simd simdlen(8_4) safelen(9_4)
    do i=1,1
    end do
  !$omp simd simdlen(8) safelen(8)
    do i=1,1
    end do
  !$omp simd simdlen(8) safelen(9)
    do i=1,1
    end do
end
call sub
print *, "pass"
end
