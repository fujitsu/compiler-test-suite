
program main
  complex(16)::c32
  integer::tnum=1
  c32=5

  !$ tnum = omp_get_max_threads()
  if (tnum > 4) then
    call omp_set_num_threads(4)
  endif

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
