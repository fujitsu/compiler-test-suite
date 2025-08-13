Program bad4

  implicit none

  real::randomharvest

  call random_number(randomharvest)
  write(17,*)randomharvest
  if (randomharvest>=0.and.randomharvest<1)then
  else
   print *,'error-1'
  endif

  call random_number(randomharvest)
  write(17,*)randomharvest
  if (randomharvest>=0.and.randomharvest<1)then
  else
   print *,'error-2'
  endif

  call random_number(randomharvest)
  write(17,*)randomharvest
  if (randomharvest>=0.and.randomharvest<1)then
  else
   print *,'error-3'
  endif

  print *,'pass'
end program bad4
