
program main
  complex(8)::c16
  integer::tnum=1
  c16=5

  !$ tnum = omp_get_max_threads()
  if (tnum > 4) then
    call omp_set_num_threads(4)
  endif

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
