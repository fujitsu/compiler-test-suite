
program main
  !$ use omp_lib
  integer(1)::i1=5,x=10
  integer::tnum=1

  !$ tnum = omp_get_max_threads()
  if (tnum > 4) then
    call omp_set_num_threads(4)
  endif

  !$omp parallel
    !$omp atomic
      i1=i1+1
    !$omp atomic
      i1=i1-1
  !$omp end parallel

  if (i1 .ne. 5) print *,"NG(1) : i1 = ", i1

  !$omp parallel
    !$omp atomic
      i1=i1*2
    !$omp atomic
      i1=i1/2
  !$omp end parallel

  if (i1 .ne. 5) print *,"NG(2) : i1 = ", i1

  !$omp parallel
    !$omp atomic
      i1=MAX(i1,x)
  !$omp end parallel

  if (i1 .ne. 10) print *,"NG(3) : i1 = ", i1
  i1 = 5

  !$omp parallel
    !$omp atomic
      i1=MIN(i1,x)
  !$omp end parallel

  if (i1 .ne. 5) print *,"NG(4) : i1 = ", i1

  !$omp parallel
    !$omp atomic
      i1=IAND(i1,x)
  !$omp end parallel

  if (i1 .ne. 0) print *,"NG(5) : i1 = ", i1
  i1 = 5

  !$omp parallel
    !$omp atomic
      i1=IOR(i1,x)
  !$omp end parallel

  if (i1 .ne. x + 5) print *,"NG(6) : i1 = ", i1
  i1 = 5

  !$omp parallel
    !$omp atomic
      i1=IEOR(i1,x)
  !$omp end parallel

  if (i1 .ne. 5 .and. i1 .ne. 15) print *,"NG(7) : i1 =",i1
  print *,"pass"

end program main
