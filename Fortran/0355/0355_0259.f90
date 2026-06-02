program main
  logical*1  l1x, l1y
  logical*2  l2x, l2y
  logical*4  l4x, l4y
  logical*8  l8x, l8y, calc(4), res/.false./

  data l1x,l2x,l4x,l8x/4* .false. /
  data l1y,l2y,l4y,l8y/4* .true. /

  !$omp atomic update
  l8x   =  l8x  .eqv.  l1y
  !$omp end atomic
  calc(1) = l8x
  l8x = .false.
  !$omp atomic update
  l8x   =  l8x  .eqv.  l2y
  !$omp end atomic
  calc(2) = l8x
  l8x = .false.
  !$omp atomic update
  l8x   =  l8x  .eqv.  l4y
  !$omp end atomic
  calc(3) = l8x
  l8x = .false.
  !$omp atomic update
  l8x   =  l8x  .eqv.  l8y
  !$omp end atomic
  calc(4) = l8x

  if ((calc(1) .neqv. res) .or. (calc(2) .neqv. res) .or. (calc(3) .neqv. res) .or. (calc(4) .neqv. res)) then
     write(6,*) "ng"
     write(6,*) calc
  endif
  write(6,*) "ok"
end program
