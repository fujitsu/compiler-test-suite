subroutine sss1
  !$omp declare target
  !$omp declare simd
end subroutine sss1
subroutine sss2
  !$omp declare target
  !$omp declare reduction (+:logical:omp_out=omp_in)
end subroutine sss2
call sss1
call sss2
print *,'pass'
end
  
