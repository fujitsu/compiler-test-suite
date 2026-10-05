
program main
  complex(4)::c8
  integer::tnum=1
  c8=5

  !$ tnum = omp_get_max_threads()
  if (tnum > 4) then
    call omp_set_num_threads(4)
  endif

  !$omp parallel
    !$omp atomic
      c8=c8+1
    !$omp atomic
      c8=c8-1
  !$omp end parallel

  if (c8.ne.5) print *,"NG(1) : c8 = ", c8

  !$omp parallel
    !$omp atomic
      c8=c8*2
    !$omp atomic
      c8=c8/2
  !$omp end parallel

  if (c8.ne.5) print *,"NG(2) : c8 = ", c8
  print *,"pass"

end program main
