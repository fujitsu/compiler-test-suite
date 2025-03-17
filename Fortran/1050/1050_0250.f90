
program main
  real(16)::r16=5,x=10

  !$omp parallel
    !$omp atomic
      r16=r16+1
    !$omp atomic
      r16=r16-1
  !$omp end parallel

  if (r16.ne.5) print *,"NG(1) : r16 = ", r16

  !$omp parallel
    !$omp atomic
      r16=r16*2
    !$omp atomic
      r16=r16/2
  !$omp end parallel

  if (r16.ne.5) print *,"NG(2) : r16 = ", r16

  !$omp parallel
    !$omp atomic
      r16=MAX(r16,x)
  !$omp end parallel

  if (r16.ne.10) print *,"NG(3) : r16 = ", r16
  r16=5

  !$omp parallel
    !$omp atomic
      r16=MIN(r16,x)
  !$omp end parallel

  if (r16.ne.5) print *,"NG(5) : r16 = ", r16
  print *,"pass"

end program main
