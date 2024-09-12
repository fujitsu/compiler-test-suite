!
!
  subroutine sub(j, i)
!$omp declare simd
  j = i + 3
  end subroutine 
!
  print *,'PASS'
  end
