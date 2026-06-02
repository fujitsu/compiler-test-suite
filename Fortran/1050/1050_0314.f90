
program main
  complex(8)::c16
  c16=5

  !$omp parallel
    !$omp atomic
      c16=c16+1
    !$omp atomic
      c16=c16-1
  !$omp end parallel

  if (c16.ne.5) print *,"NG(1) : c16 = ", c16

  !$omp parallel
    !$omp atomic
      c16=c16*2
    !$omp atomic
      c16=c16/2
  !$omp end parallel

  if (c16.ne.5) print *,"NG(2) : c16 = ", c16
  print *,"pass"

end program main
