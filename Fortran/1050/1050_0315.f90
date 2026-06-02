
program main
  complex(16)::c32
  c32=5

  !$omp parallel
    !$omp atomic
      c32=c32+1
    !$omp atomic
      c32=c32-1
  !$omp end parallel

  if (c32.ne.5) print *,"NG(1) : c32 = ", c32

  !$omp parallel
    !$omp atomic
      c32=c32*2
    !$omp atomic
      c32=c32/2
  !$omp end parallel

  if (c32.ne.5) print *,"NG(2) : c32 = ", c32
  print *,"pass"

end program main
